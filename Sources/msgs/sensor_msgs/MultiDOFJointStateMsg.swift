// Generated by msgbuilder 2024-02-23 05:14:48 +0000

import StdMsgs

extension sensor_msgs {
	/// Representation of state for joints with multiple degrees of freedom, 
	/// following the structure of JointState.
	///
	/// It is assumed that a joint in a system corresponds to a transform that gets applied 
	/// along the kinematic chain. For example, a planar joint (as in URDF) is 3DOF (x, y, yaw)
	/// and those 3DOF can be expressed as a transformation matrix, and that transformation
	/// matrix can be converted back to (x, y, yaw)
	///
	/// Each joint is uniquely identified by its name
	/// The header specifies the time at which the joint states were recorded. All the joint states
	/// in one message have to be recorded at the same time.
	///
	/// This message consists of a multiple arrays, one for each part of the joint state. 
	/// The goal is to make each of the fields optional. When e.g. your joints have no
	/// wrench associated with them, you can leave the wrench array empty. 
	///
	/// All arrays in this message should have the same size, or be empty.
	/// This is the only way to uniquely associate the joint name with the correct
	/// states.
	public struct MultiDOFJointState: MessageWithHeader {
		public static let md5sum: String = "690f272f0640d2631c305eeb8301e59d"
		public static let datatype = "sensor_msgs/MultiDOFJointState"
		public static let definition = """
			# Representation of state for joints with multiple degrees of freedom, 
			# following the structure of JointState.
			#
			# It is assumed that a joint in a system corresponds to a transform that gets applied 
			# along the kinematic chain. For example, a planar joint (as in URDF) is 3DOF (x, y, yaw)
			# and those 3DOF can be expressed as a transformation matrix, and that transformation
			# matrix can be converted back to (x, y, yaw)
			#
			# Each joint is uniquely identified by its name
			# The header specifies the time at which the joint states were recorded. All the joint states
			# in one message have to be recorded at the same time.
			#
			# This message consists of a multiple arrays, one for each part of the joint state. 
			# The goal is to make each of the fields optional. When e.g. your joints have no
			# wrench associated with them, you can leave the wrench array empty. 
			#
			# All arrays in this message should have the same size, or be empty.
			# This is the only way to uniquely associate the joint name with the correct
			# states.
			Header header
			string[] joint_names
			geometry_msgs/Transform[] transforms
			geometry_msgs/Twist[] twist
			geometry_msgs/Wrench[] wrench
			"""

		public var header: std_msgs.Header
		public var joint_names: [String]
		public var transforms: [geometry_msgs.Transform]
		public var twist: [geometry_msgs.Twist]
		public var wrench: [geometry_msgs.Wrench]

		public init(header: std_msgs.Header, joint_names: [String], transforms: [geometry_msgs.Transform], twist: [geometry_msgs.Twist], wrench: [geometry_msgs.Wrench]) {
			self.header = header
			self.joint_names = joint_names
			self.transforms = transforms
			self.twist = twist
			self.wrench = wrench
		}

		public init() {
			header = std_msgs.Header()
			joint_names = [String]()
			transforms = [geometry_msgs.Transform]()
			twist = [geometry_msgs.Twist]()
			wrench = [geometry_msgs.Wrench]()
		}
	}
}