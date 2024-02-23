// Generated by msgbuilder 2024-02-23 05:14:48 +0000

import StdMsgs

extension geometry_msgs {
	/// A wrench with reference coordinate frame and timestamp
	public struct WrenchStamped: MessageWithHeader {
		public static let md5sum: String = "d78d3cb249ce23087ade7e7d0c40cfa7"
		public static let datatype = "geometry_msgs/WrenchStamped"
		public static let definition = """
			# A wrench with reference coordinate frame and timestamp
			Header header
			Wrench wrench
			"""

		public var header: std_msgs.Header
		public var wrench: Wrench

		public init(header: std_msgs.Header, wrench: Wrench) {
			self.header = header
			self.wrench = wrench
		}

		public init() {
			header = std_msgs.Header()
			wrench = Wrench()
		}
	}
}