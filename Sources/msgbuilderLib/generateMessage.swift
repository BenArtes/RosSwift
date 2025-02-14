//
//  generateMessage.swift
//  msgbuilder
//
//  Created by Thomas Gustafsson on 2019-04-27.
//

import Foundation

/// Split a name into its package and resource name parts, e.g. 'std_msgs/String -> std_msgs, String'
///
/// - Parameters:
///     - name: package resource name, e.g. 'std_msgs/String'
/// - Returns: package name, resource name

let builtinMsgs = ["actionlib_msgs","control_msgs","diagnostic_msgs","gazebo_msgs",
"geographic_msgs","geometry_msgs","map_msgs","nav_msgs","pcl_msgs","rosgraph_msgs","sensor_msgs","shape_msgs","stereo_msgs",
"trajectory_msgs","uuid_msgs","visualization_msgs","std_srvs","std_msgs"]

func package_resource_name(name: String) -> (package: String, name: String)? {
    if name.contains("/") {
        let val = name.components(separatedBy: "/")
        if val.count != 2 {
            return nil
        } else {
            return (val[0], val[1])
        }
    }
    return ("", name)
}

extension MsgSpec {

    func dumpSwiftCode(context: MsgContext, destination: String) {
        if let code = generateSwiftCode(context: context) {
            let file = "\(destination)/\(package)/\(short_name)Msg.swift"
            if let oldContent = try? String(contentsOfFile: file, encoding: .utf8) {
                // The date in the first row will always change
                if oldContent.components(separatedBy: .newlines).dropFirst() == code.components(separatedBy: .newlines).dropFirst() {
                    return
                }
            }
            try? code.write(toFile: file, atomically: false, encoding: .utf8)
            print("generated \(full_name)")
        }

    }

    func generateSwiftCode(context: MsgContext) -> String? {
        let data = text.components(separatedBy: .newlines).filter{ $0 != "" }
        if package == "std_msgs" && data.count == 1 {
            return generateStdMsgSwiftCode(context: context)
        }

        guard let (part, modules) = generatePartSwiftCode(context: context) else {
            return nil
        }

        let importModules = modules.sorted().map{"import \($0)"}.joined(separator: "\n")

        let swiftMessageType = full_name.replacingOccurrences(of: "/", with: ".")
        let path = swiftMessageType.components(separatedBy: ".")
        let namespace = path.dropLast().joined(separator: ".")
        let code = """
            // Generated by msgbuilder \(Date())

            \(importModules)

            \(context.embed ? "extension \(namespace) {" : "")
            \(part)
            \(context.embed ? "}" : "")
            """

        return code

    }

    func generatePartSwiftCode(context: MsgContext) -> (part: String, modules: Set<String>)? {

        let swiftMessageType = full_name.replacingOccurrences(of: "/", with: ".")
        let data = text.components(separatedBy: .newlines).filter{ $0 != "" }
        let tabbedData = data.joined(separator: "\n\t\t\t")

        let constDecl = constants.map { $0.declaration(in: package) }.joined(separator: "\n\t")
        let decl = variables.map{ $0.declaration(in: package) }.joined(separator: "\n\t")

        var md5sum = compute_md5(msg_context: context)
        if (md5sum == nil) {
            print("Could not compute md5 for \(full_name)")
            md5sum = ""
        }

        let arguments = variables.compactMap{$0.argument(in: package)}.joined(separator: ", ")
        let initCode = variables.compactMap{$0.initCode(in: package)}.joined(separator: "\n\t")
        let codeInit = variables.compactMap{$0.codeInit(in: package)}.joined(separator: "\n\t")
        let path = swiftMessageType.components(separatedBy: ".")
        var modules = Set(variables.compactMap{$0.module})
        modules.remove(package)
        modules.subtract(builtinMsgs)
        if !builtinMsgs.contains(package) {
            modules.insert("msgs")
        }
        modules.remove("std_msgs")
        if package != "std_msgs" {
            modules.insert("StdMsgs")
        }
        let varTypes = Set(variables.map { bare_msg_type($0.field_type) })
        if varTypes.contains(TIME) || varTypes.contains(DURATION) {
            modules.insert("RosTime")
        }
        let hasHeader = variables.contains { $0.simpleType == "std_msgs.Header" }
        var messageType = self.messageType
        if hasHeader {
            messageType = messageType.messageWithHeader
        }
        let messageProtocol = messageType.rawValue
        var servicePart = ""
        let name =  messageType.isServiceMessage ? messageType.serviceName : path.last!
        if messageType.isServiceMessage {
            let baseName = short_name.contains("Response") ? short_name.dropLast("Response".count) : short_name.dropLast("Request".count)
            servicePart = "\n\t\tpublic typealias ServiceType = \(baseName)"
        }

        let comments = data.filter{ $0.starts(with: "#") }
            .map { "\t///" + $0.dropFirst() }
            .joined(separator: "\n")
        var argInit = ""
        if !arguments.isEmpty {
            argInit = """

            \t\tpublic init(\(arguments)) {
            \t\(initCode)
            \t\t}
            
            """
        }

        let emptyData = tabbedData.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty

        let singleRow = emptyData || !tabbedData.contains("\n") && tabbedData.count < 40

        let definition = singleRow ? "\"\(tabbedData)\"" : "\"\"\"\n\t\t\t\(tabbedData)\n\t\t\t\"\"\""

        var code = """
            \(comments)
            \tpublic struct \(name): \(messageProtocol) {
            \t\tpublic static let md5sum: String = "\(md5sum ?? "")"
            \t\tpublic static let datatype = "\(full_name)"\(servicePart)
            \t\tpublic static let definition = \(definition)

            """

        if !constDecl.isEmpty {
            code += "\n\t\(constDecl)"
        }

        if !decl.isEmpty {
            code += "\n\t\(decl)\n"
        }

        code += argInit

        code += """

            \t\tpublic init() {
            \t\(codeInit)
            \t\t}
            \t}
            """

        return (code, modules)
    }
}
