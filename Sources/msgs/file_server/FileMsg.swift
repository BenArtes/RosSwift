// Generated by msgbuilder 2024-03-05 04:21:47 +0000

import StdMsgs

extension file_server {

	public struct File: Message {
		public static let md5sum: String = "9072a2397a46e9f591fb260e7815d049"
		public static let datatype = "file_server/File"
		public static let definition = """
			string name
			uint8[] data
			"""

		public var name: string
		public var data: [uint8]

		public init(name: string, data: [uint8]) {
			self.name = name
			self.data = data
		}

		public init() {
			name = string()
			data = [uint8]()
		}
	}
}
