// Generated by msgbuilder 2024-02-23 05:14:48 +0000

import StdMsgs

extension gazebo_msgs {
	public enum SetLightProperties: ServiceProt {
		public static let md5sum: String = "e6f13430c57278bb364aca53a1bf5ebf"
		public static let datatype = "gazebo_msgs/SetLightProperties"

	
		public struct Request: ServiceRequestMessage {
			public static let md5sum: String = "10d953f2306aec18460eb80dd94fdd47"
			public static let datatype = "gazebo_msgs/SetLightPropertiesRequest"
			public typealias ServiceType = SetLightProperties
			public static let definition = """
				string light_name                    # name of Gazebo Light
				bool cast_shadows
				std_msgs/ColorRGBA diffuse           # diffuse color as red, green, blue, alpha
				std_msgs/ColorRGBA specular          # specular color as red, green, blue, alpha
				float64 attenuation_constant
				float64 attenuation_linear
				float64 attenuation_quadratic
				geometry_msgs/Vector3 direction
				geometry_msgs/Pose pose              # pose in world frame
				"""
	
			public var light_name: String
			public var cast_shadows: Bool
			public var diffuse: std_msgs.ColorRGBA
			public var specular: std_msgs.ColorRGBA
			public var attenuation_constant: Float64
			public var attenuation_linear: Float64
			public var attenuation_quadratic: Float64
			public var direction: geometry_msgs.Vector3
			public var pose: geometry_msgs.Pose
	
			public init(light_name: String, cast_shadows: Bool, diffuse: std_msgs.ColorRGBA, specular: std_msgs.ColorRGBA, attenuation_constant: Float64, attenuation_linear: Float64, attenuation_quadratic: Float64, direction: geometry_msgs.Vector3, pose: geometry_msgs.Pose) {
				self.light_name = light_name
				self.cast_shadows = cast_shadows
				self.diffuse = diffuse
				self.specular = specular
				self.attenuation_constant = attenuation_constant
				self.attenuation_linear = attenuation_linear
				self.attenuation_quadratic = attenuation_quadratic
				self.direction = direction
				self.pose = pose
			}
	
			public init() {
				light_name = String()
				cast_shadows = Bool()
				diffuse = std_msgs.ColorRGBA()
				specular = std_msgs.ColorRGBA()
				attenuation_constant = Float64()
				attenuation_linear = Float64()
				attenuation_quadratic = Float64()
				direction = geometry_msgs.Vector3()
				pose = geometry_msgs.Pose()
			}
		}

	
		public struct Response: ServiceResponseMessage {
			public static let md5sum: String = "2ec6f3eff0161f4257b808b12bc830c2"
			public static let datatype = "gazebo_msgs/SetLightPropertiesResponse"
			public typealias ServiceType = SetLightProperties
			public static let definition = """
				bool success                         # return true if get successful
				string status_message                # comments if available
				"""
	
			public var success: Bool
			public var status_message: String
	
			public init(success: Bool, status_message: String) {
				self.success = success
				self.status_message = status_message
			}
	
			public init() {
				success = Bool()
				status_message = String()
			}
		}

	}
}