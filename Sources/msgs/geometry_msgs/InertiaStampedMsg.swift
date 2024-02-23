// Generated by msgbuilder 2024-02-23 05:14:48 +0000

import StdMsgs

extension geometry_msgs {

	public struct InertiaStamped: MessageWithHeader {
		public static let md5sum: String = "ddee48caeab5a966c5e8d166654a9ac7"
		public static let datatype = "geometry_msgs/InertiaStamped"
		public static let definition = """
			Header header
			Inertia inertia
			"""

		public var header: std_msgs.Header
		public var inertia: Inertia

		public init(header: std_msgs.Header, inertia: Inertia) {
			self.header = header
			self.inertia = inertia
		}

		public init() {
			header = std_msgs.Header()
			inertia = Inertia()
		}
	}
}