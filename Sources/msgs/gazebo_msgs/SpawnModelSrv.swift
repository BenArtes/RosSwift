// Generated by msgbuilder 2024-02-23 05:14:48 +0000

import StdMsgs

extension gazebo_msgs {
	public enum SpawnModel: ServiceProt {
		public static let md5sum: String = "9ed9c82c96abe1a00c3e8cdaeee24413"
		public static let datatype = "gazebo_msgs/SpawnModel"

	
		public struct Request: ServiceRequestMessage {
			public static let md5sum: String = "6d0eba5753761cd57e6263a056b79930"
			public static let datatype = "gazebo_msgs/SpawnModelRequest"
			public typealias ServiceType = SpawnModel
			public static let definition = """
				string model_name                 # name of the model to be spawn
				string model_xml                  # this should be an urdf or gazebo xml
				string robot_namespace            # spawn robot and all ROS interfaces under this namespace
				geometry_msgs/Pose initial_pose   # only applied to canonical body
				string reference_frame            # initial_pose is defined relative to the frame of this model/body
				                                  # if left empty or "world", then gazebo world frame is used
				                                  # if non-existent model/body is specified, an error is returned
				                                  #   and the model is not spawned
				"""
	
			public var model_name: String
			public var model_xml: String
			public var robot_namespace: String
			public var initial_pose: geometry_msgs.Pose
			public var reference_frame: String
	
			public init(model_name: String, model_xml: String, robot_namespace: String, initial_pose: geometry_msgs.Pose, reference_frame: String) {
				self.model_name = model_name
				self.model_xml = model_xml
				self.robot_namespace = robot_namespace
				self.initial_pose = initial_pose
				self.reference_frame = reference_frame
			}
	
			public init() {
				model_name = String()
				model_xml = String()
				robot_namespace = String()
				initial_pose = geometry_msgs.Pose()
				reference_frame = String()
			}
		}

	
		public struct Response: ServiceResponseMessage {
			public static let md5sum: String = "2ec6f3eff0161f4257b808b12bc830c2"
			public static let datatype = "gazebo_msgs/SpawnModelResponse"
			public typealias ServiceType = SpawnModel
			public static let definition = """
				bool success                      # return true if spawn successful
				string status_message             # comments if available
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