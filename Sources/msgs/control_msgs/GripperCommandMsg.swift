// Generated by msgbuilder 2024-02-23 05:14:48 +0000

import StdMsgs

extension control_msgs {

	public struct GripperCommand: Message {
		public static let md5sum: String = "680acaff79486f017132a7f198d40f08"
		public static let datatype = "control_msgs/GripperCommand"
		public static let definition = """
			float64 position
			float64 max_effort
			"""

		public var position: Float64
		public var max_effort: Float64

		public init(position: Float64, max_effort: Float64) {
			self.position = position
			self.max_effort = max_effort
		}

		public init() {
			position = Float64()
			max_effort = Float64()
		}
	}
}