// Generated by msgbuilder 2024-02-23 05:14:48 +0000

import StdMsgs

extension visualization_msgs {

	public struct MarkerArray: Message {
		public static let md5sum: String = "d155b9ce5188fbaf89745847fd5882d7"
		public static let datatype = "visualization_msgs/MarkerArray"
		public static let definition = "Marker[] markers"

		public var markers: [Marker]

		public init(markers: [Marker]) {
			self.markers = markers
		}

		public init() {
			markers = [Marker]()
		}
	}
}
