// Generated by msgbuilder 2024-02-23 05:14:48 +0000

import StdMsgs

extension sensor_msgs {
	/// This message is a submessage of MultiEchoLaserScan and is not intended
	/// to be used separately.
	public struct LaserEcho: Message {
		public static let md5sum: String = "8bc5ae449b200fba4d552b4225586696"
		public static let datatype = "sensor_msgs/LaserEcho"
		public static let definition = """
			# This message is a submessage of MultiEchoLaserScan and is not intended
			# to be used separately.
			float32[] echoes  # Multiple values of ranges or intensities.
			                  # Each array represents data from the same angle increment.
			"""

		public var echoes: [Float32]

		public init(echoes: [Float32]) {
			self.echoes = echoes
		}

		public init() {
			echoes = [Float32]()
		}
	}
}