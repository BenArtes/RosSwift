// Generated by msgbuilder 2024-02-23 05:14:48 +0000

import StdMsgs

extension nav_msgs {
	public enum LoadMap: ServiceProt {
		public static let md5sum: String = "3779f414e40b820b0a1fbb205ab722df"
		public static let datatype = "nav_msgs/LoadMap"

		/// URL of map resource
		/// Can be an absolute path to a file: file:///path/to/maps/floor1.yaml
		/// Or, relative to a ROS package: package://my_ros_package/maps/floor2.yaml
		public struct Request: ServiceRequestMessage {
			public static let md5sum: String = "3813ba1ae85fbcd4dc88c90f1426b90b"
			public static let datatype = "nav_msgs/LoadMapRequest"
			public typealias ServiceType = LoadMap
			public static let definition = """
				# URL of map resource
				# Can be an absolute path to a file: file:///path/to/maps/floor1.yaml
				# Or, relative to a ROS package: package://my_ros_package/maps/floor2.yaml
				string map_url
				"""
	
			public var map_url: String
	
			public init(map_url: String) {
				self.map_url = map_url
			}
	
			public init() {
				map_url = String()
			}
		}

		/// Result code defintions
		/// Returned map is only valid if result equals RESULT_SUCCESS
		public struct Response: ServiceResponseMessage {
			public static let md5sum: String = "9b76c220323da10893651b610065475c"
			public static let datatype = "nav_msgs/LoadMapResponse"
			public typealias ServiceType = LoadMap
			public static let definition = """
				# Result code defintions
				uint8 RESULT_SUCCESS=0
				uint8 RESULT_MAP_DOES_NOT_EXIST=1
				uint8 RESULT_INVALID_MAP_DATA=2
				uint8 RESULT_INVALID_MAP_METADATA=3
				uint8 RESULT_UNDEFINED_FAILURE=255
				# Returned map is only valid if result equals RESULT_SUCCESS
				nav_msgs/OccupancyGrid map
				uint8 result
				"""
	
			public static let RESULT_SUCCESS: UInt8 = 0
			public static let RESULT_MAP_DOES_NOT_EXIST: UInt8 = 1
			public static let RESULT_INVALID_MAP_DATA: UInt8 = 2
			public static let RESULT_INVALID_MAP_METADATA: UInt8 = 3
			public static let RESULT_UNDEFINED_FAILURE: UInt8 = 255
			public var map: OccupancyGrid
			public var result: UInt8
	
			public init(map: OccupancyGrid, result: UInt8) {
				self.map = map
				self.result = result
			}
	
			public init() {
				map = OccupancyGrid()
				result = UInt8()
			}
		}

	}
}