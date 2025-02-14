// Generated by msgbuilder 2024-02-23 05:14:48 +0000

import StdMsgs

extension sensor_msgs {
	/// This message publishes values for multiple feedback at once. 
	public struct JoyFeedbackArray: Message {
		public static let md5sum: String = "7dff19f73b424b5854e1548589cd6084"
		public static let datatype = "sensor_msgs/JoyFeedbackArray"
		public static let definition = """
			# This message publishes values for multiple feedback at once. 
			JoyFeedback[] array
			"""

		public var array: [JoyFeedback]

		public init(array: [JoyFeedback]) {
			self.array = array
		}

		public init() {
			array = [JoyFeedback]()
		}
	}
}