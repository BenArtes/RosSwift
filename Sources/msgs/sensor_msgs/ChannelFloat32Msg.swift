// Generated by msgbuilder 2024-02-23 05:14:48 +0000

import StdMsgs

extension sensor_msgs {
	/// This message is used by the PointCloud message to hold optional data
	/// associated with each point in the cloud. The length of the values
	/// array should be the same as the length of the points array in the
	/// PointCloud, and each value should be associated with the corresponding
	/// point.
	/// Channel names in existing practice include:
	///   "u", "v" - row and column (respectively) in the left stereo image.
	///              This is opposite to usual conventions but remains for
	///              historical reasons. The newer PointCloud2 message has no
	///              such problem.
	///   "rgb" - For point clouds produced by color stereo cameras. uint8
	///           (R,G,B) values packed into the least significant 24 bits,
	///           in order.
	///   "intensity" - laser or pixel intensity.
	///   "distance"
	/// The channel name should give semantics of the channel (e.g.
	/// "intensity" instead of "value").
	/// The values array should be 1-1 with the elements of the associated
	/// PointCloud.
	public struct ChannelFloat32: Message {
		public static let md5sum: String = "3d40139cdd33dfedcb71ffeeeb42ae7f"
		public static let datatype = "sensor_msgs/ChannelFloat32"
		public static let definition = """
			# This message is used by the PointCloud message to hold optional data
			# associated with each point in the cloud. The length of the values
			# array should be the same as the length of the points array in the
			# PointCloud, and each value should be associated with the corresponding
			# point.
			# Channel names in existing practice include:
			#   "u", "v" - row and column (respectively) in the left stereo image.
			#              This is opposite to usual conventions but remains for
			#              historical reasons. The newer PointCloud2 message has no
			#              such problem.
			#   "rgb" - For point clouds produced by color stereo cameras. uint8
			#           (R,G,B) values packed into the least significant 24 bits,
			#           in order.
			#   "intensity" - laser or pixel intensity.
			#   "distance"
			# The channel name should give semantics of the channel (e.g.
			# "intensity" instead of "value").
			string name
			# The values array should be 1-1 with the elements of the associated
			# PointCloud.
			float32[] values
			"""

		public var name: String
		public var values: [Float32]

		public init(name: String, values: [Float32]) {
			self.name = name
			self.values = values
		}

		public init() {
			name = String()
			values = [Float32]()
		}
	}
}