// Generated by msgbuilder 2024-02-23 05:14:48 +0000

import StdMsgs

extension nav_msgs {
	public enum GetPlan: ServiceProt {
		public static let md5sum: String = "421c8ea4d21c6c9db7054b4bbdf1e024"
		public static let datatype = "nav_msgs/GetPlan"

		/// Get a plan from the current position to the goal Pose 
		/// The start pose for the plan
		/// The final pose of the goal position
		/// If the goal is obstructed, how many meters the planner can 
		/// relax the constraint in x and y before failing. 
		public struct Request: ServiceRequestMessage {
			public static let md5sum: String = "e25a43e0752bcca599a8c2eef8282df8"
			public static let datatype = "nav_msgs/GetPlanRequest"
			public typealias ServiceType = GetPlan
			public static let definition = """
				# Get a plan from the current position to the goal Pose 
				# The start pose for the plan
				geometry_msgs/PoseStamped start
				# The final pose of the goal position
				geometry_msgs/PoseStamped goal
				# If the goal is obstructed, how many meters the planner can 
				# relax the constraint in x and y before failing. 
				float32 tolerance
				"""
	
			public var start: geometry_msgs.PoseStamped
			public var goal: geometry_msgs.PoseStamped
			public var tolerance: Float32
	
			public init(start: geometry_msgs.PoseStamped, goal: geometry_msgs.PoseStamped, tolerance: Float32) {
				self.start = start
				self.goal = goal
				self.tolerance = tolerance
			}
	
			public init() {
				start = geometry_msgs.PoseStamped()
				goal = geometry_msgs.PoseStamped()
				tolerance = Float32()
			}
		}

	
		public struct Response: ServiceResponseMessage {
			public static let md5sum: String = "0002bc113c0259d71f6cf8cbc9430e18"
			public static let datatype = "nav_msgs/GetPlanResponse"
			public typealias ServiceType = GetPlan
			public static let definition = "nav_msgs/Path plan"
	
			public var plan: Path
	
			public init(plan: Path) {
				self.plan = plan
			}
	
			public init() {
				plan = Path()
			}
		}

	}
}