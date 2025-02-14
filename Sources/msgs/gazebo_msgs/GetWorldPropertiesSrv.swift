// Generated by msgbuilder 2024-02-23 05:14:48 +0000

import StdMsgs

extension gazebo_msgs {
	public enum GetWorldProperties: ServiceProt {
		public static let md5sum: String = "36bb0f2eccf4d8be971410c22818ba3f"
		public static let datatype = "gazebo_msgs/GetWorldProperties"

	
		public struct Request: ServiceRequestMessage {
			public static let md5sum: String = "d41d8cd98f00b204e9800998ecf8427e"
			public static let datatype = "gazebo_msgs/GetWorldPropertiesRequest"
			public typealias ServiceType = GetWorldProperties
			public static let definition = ""
	
			public init() {
		
			}
		}

	
		public struct Response: ServiceResponseMessage {
			public static let md5sum: String = "36bb0f2eccf4d8be971410c22818ba3f"
			public static let datatype = "gazebo_msgs/GetWorldPropertiesResponse"
			public typealias ServiceType = GetWorldProperties
			public static let definition = """
				float64 sim_time                     # current sim time
				string[] model_names                 # list of models in the world
				bool rendering_enabled               # if X is used
				bool success                         # return true if get successful
				string status_message                # comments if available
				"""
	
			public var sim_time: Float64
			public var model_names: [String]
			public var rendering_enabled: Bool
			public var success: Bool
			public var status_message: String
	
			public init(sim_time: Float64, model_names: [String], rendering_enabled: Bool, success: Bool, status_message: String) {
				self.sim_time = sim_time
				self.model_names = model_names
				self.rendering_enabled = rendering_enabled
				self.success = success
				self.status_message = status_message
			}
	
			public init() {
				sim_time = Float64()
				model_names = [String]()
				rendering_enabled = Bool()
				success = Bool()
				status_message = String()
			}
		}

	}
}