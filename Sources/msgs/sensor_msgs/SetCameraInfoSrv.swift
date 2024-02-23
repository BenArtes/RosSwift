// Generated by msgbuilder 2024-02-23 05:14:48 +0000

import StdMsgs

extension sensor_msgs {
	public enum SetCameraInfo: ServiceProt {
		public static let md5sum: String = "bef1df590ed75ed1f393692395e15482"
		public static let datatype = "sensor_msgs/SetCameraInfo"

		/// This service requests that a camera stores the given CameraInfo 
		/// as that camera's calibration information.
		///
		/// The width and height in the camera_info field should match what the
		/// camera is currently outputting on its camera_info topic, and the camera
		/// will assume that the region of the imager that is being referred to is
		/// the region that the camera is currently capturing.
		public struct Request: ServiceRequestMessage {
			public static let md5sum: String = "ee34be01fdeee563d0d99cd594d5581d"
			public static let datatype = "sensor_msgs/SetCameraInfoRequest"
			public typealias ServiceType = SetCameraInfo
			public static let definition = """
				# This service requests that a camera stores the given CameraInfo 
				# as that camera's calibration information.
				#
				# The width and height in the camera_info field should match what the
				# camera is currently outputting on its camera_info topic, and the camera
				# will assume that the region of the imager that is being referred to is
				# the region that the camera is currently capturing.
				sensor_msgs/CameraInfo camera_info # The camera_info to store
				"""
	
			public var camera_info: CameraInfo
	
			public init(camera_info: CameraInfo) {
				self.camera_info = camera_info
			}
	
			public init() {
				camera_info = CameraInfo()
			}
		}

	
		public struct Response: ServiceResponseMessage {
			public static let md5sum: String = "2ec6f3eff0161f4257b808b12bc830c2"
			public static let datatype = "sensor_msgs/SetCameraInfoResponse"
			public typealias ServiceType = SetCameraInfo
			public static let definition = """
				bool success          # True if the call succeeded
				string status_message # Used to give details about success
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