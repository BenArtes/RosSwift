// Generated by msgbuilder 2024-02-23 05:14:48 +0000

import StdMsgs

extension geometry_msgs {
	/// An array of poses with a header for global reference.
	public struct PoseArray: MessageWithHeader {
		public static let md5sum: String = "916c28c5764443f268b296bb671b9d97"
		public static let datatype = "geometry_msgs/PoseArray"
		public static let definition = """
			# An array of poses with a header for global reference.
			Header header
			Pose[] poses
			"""

		public var header: std_msgs.Header
		public var poses: [Pose]

		public init(header: std_msgs.Header, poses: [Pose]) {
			self.header = header
			self.poses = poses
		}

		public init() {
			header = std_msgs.Header()
			poses = [Pose]()
		}
	}
}