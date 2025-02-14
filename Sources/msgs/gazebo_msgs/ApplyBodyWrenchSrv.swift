// Generated by msgbuilder 2024-02-23 05:14:48 +0000

import RosTime
import StdMsgs

extension gazebo_msgs {
	public enum ApplyBodyWrench: ServiceProt {
		public static let md5sum: String = "585b9f9618aa0581b207e2f2d90866bc"
		public static let datatype = "gazebo_msgs/ApplyBodyWrench"

		/// Apply Wrench to Gazebo Body.
		/// via the callback mechanism
		/// all Gazebo operations are made in world frame
		public struct Request: ServiceRequestMessage {
			public static let md5sum: String = "e37e6adf97eba5095baa77dffb71e5bd"
			public static let datatype = "gazebo_msgs/ApplyBodyWrenchRequest"
			public typealias ServiceType = ApplyBodyWrench
			public static let definition = """
				# Apply Wrench to Gazebo Body.
				# via the callback mechanism
				# all Gazebo operations are made in world frame
				string body_name                          # Gazebo body to apply wrench (linear force and torque)
				                                          # wrench is applied in the gazebo world by default
				                                          # body names are prefixed by model name, e.g. pr2::base_link
				string reference_frame                    # wrench is defined in the reference frame of this entity
				                                          # use inertial frame if left empty
				                                          # frame names are bodies prefixed by model name, e.g. pr2::base_link
				geometry_msgs/Point  reference_point      # wrench is defined at this location in the reference frame
				geometry_msgs/Wrench wrench               # wrench applied to the origin of the body
				time start_time                           # (optional) wrench application start time (seconds)
				                                          # if start_time is not specified, or
				                                          # start_time < current time, start as soon as possible
				duration duration                         # optional duration of wrench application time (seconds)
				                                          # if duration < 0, apply wrench continuously without end
				                                          # if duration = 0, do nothing
				                                          # if duration < step size, apply wrench
				                                          # for one step size
				"""
	
			public var body_name: String
			public var reference_frame: String
			public var reference_point: geometry_msgs.Point
			public var wrench: geometry_msgs.Wrench
			public var start_time: Time
			public var duration: RosDuration
	
			public init(body_name: String, reference_frame: String, reference_point: geometry_msgs.Point, wrench: geometry_msgs.Wrench, start_time: Time, duration: RosDuration) {
				self.body_name = body_name
				self.reference_frame = reference_frame
				self.reference_point = reference_point
				self.wrench = wrench
				self.start_time = start_time
				self.duration = duration
			}
	
			public init() {
				body_name = String()
				reference_frame = String()
				reference_point = geometry_msgs.Point()
				wrench = geometry_msgs.Wrench()
				start_time = Time()
				duration = RosDuration()
			}
		}

	
		public struct Response: ServiceResponseMessage {
			public static let md5sum: String = "2ec6f3eff0161f4257b808b12bc830c2"
			public static let datatype = "gazebo_msgs/ApplyBodyWrenchResponse"
			public typealias ServiceType = ApplyBodyWrench
			public static let definition = """
				bool success                              # return true if set wrench successful
				string status_message                     # comments if available
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
