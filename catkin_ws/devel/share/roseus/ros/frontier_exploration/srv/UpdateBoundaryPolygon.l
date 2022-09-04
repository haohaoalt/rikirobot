;; Auto-generated. Do not edit!


(when (boundp 'frontier_exploration::UpdateBoundaryPolygon)
  (if (not (find-package "FRONTIER_EXPLORATION"))
    (make-package "FRONTIER_EXPLORATION"))
  (shadow 'UpdateBoundaryPolygon (find-package "FRONTIER_EXPLORATION")))
(unless (find-package "FRONTIER_EXPLORATION::UPDATEBOUNDARYPOLYGON")
  (make-package "FRONTIER_EXPLORATION::UPDATEBOUNDARYPOLYGON"))
(unless (find-package "FRONTIER_EXPLORATION::UPDATEBOUNDARYPOLYGONREQUEST")
  (make-package "FRONTIER_EXPLORATION::UPDATEBOUNDARYPOLYGONREQUEST"))
(unless (find-package "FRONTIER_EXPLORATION::UPDATEBOUNDARYPOLYGONRESPONSE")
  (make-package "FRONTIER_EXPLORATION::UPDATEBOUNDARYPOLYGONRESPONSE"))

(in-package "ROS")

(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))




(defclass frontier_exploration::UpdateBoundaryPolygonRequest
  :super ros::object
  :slots (_explore_boundary ))

(defmethod frontier_exploration::UpdateBoundaryPolygonRequest
  (:init
   (&key
    ((:explore_boundary __explore_boundary) (instance geometry_msgs::PolygonStamped :init))
    )
   (send-super :init)
   (setq _explore_boundary __explore_boundary)
   self)
  (:explore_boundary
   (&rest __explore_boundary)
   (if (keywordp (car __explore_boundary))
       (send* _explore_boundary __explore_boundary)
     (progn
       (if __explore_boundary (setq _explore_boundary (car __explore_boundary)))
       _explore_boundary)))
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/PolygonStamped _explore_boundary
    (send _explore_boundary :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/PolygonStamped _explore_boundary
       (send _explore_boundary :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/PolygonStamped _explore_boundary
     (send _explore_boundary :deserialize buf ptr-) (incf ptr- (send _explore_boundary :serialization-length))
   ;;
   self)
  )

(defclass frontier_exploration::UpdateBoundaryPolygonResponse
  :super ros::object
  :slots ())

(defmethod frontier_exploration::UpdateBoundaryPolygonResponse
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass frontier_exploration::UpdateBoundaryPolygon
  :super ros::object
  :slots ())

(setf (get frontier_exploration::UpdateBoundaryPolygon :md5sum-) "fcd73e86a17cffec115813ce5a863c84")
(setf (get frontier_exploration::UpdateBoundaryPolygon :datatype-) "frontier_exploration/UpdateBoundaryPolygon")
(setf (get frontier_exploration::UpdateBoundaryPolygon :request) frontier_exploration::UpdateBoundaryPolygonRequest)
(setf (get frontier_exploration::UpdateBoundaryPolygon :response) frontier_exploration::UpdateBoundaryPolygonResponse)

(defmethod frontier_exploration::UpdateBoundaryPolygonRequest
  (:response () (instance frontier_exploration::UpdateBoundaryPolygonResponse :init)))

(setf (get frontier_exploration::UpdateBoundaryPolygonRequest :md5sum-) "fcd73e86a17cffec115813ce5a863c84")
(setf (get frontier_exploration::UpdateBoundaryPolygonRequest :datatype-) "frontier_exploration/UpdateBoundaryPolygonRequest")
(setf (get frontier_exploration::UpdateBoundaryPolygonRequest :definition-)
      "geometry_msgs/PolygonStamped explore_boundary

================================================================================
MSG: geometry_msgs/PolygonStamped
# This represents a Polygon with reference coordinate frame and timestamp
Header header
Polygon polygon

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
# 0: no frame
# 1: global frame
string frame_id

================================================================================
MSG: geometry_msgs/Polygon
#A specification of a polygon where the first and last points are assumed to be connected
Point32[] points

================================================================================
MSG: geometry_msgs/Point32
# This contains the position of a point in free space(with 32 bits of precision).
# It is recommeded to use Point wherever possible instead of Point32.  
# 
# This recommendation is to promote interoperability.  
#
# This message is designed to take up less space when sending
# lots of points at once, as in the case of a PointCloud.  

float32 x
float32 y
---

")

(setf (get frontier_exploration::UpdateBoundaryPolygonResponse :md5sum-) "fcd73e86a17cffec115813ce5a863c84")
(setf (get frontier_exploration::UpdateBoundaryPolygonResponse :datatype-) "frontier_exploration/UpdateBoundaryPolygonResponse")
(setf (get frontier_exploration::UpdateBoundaryPolygonResponse :definition-)
      "geometry_msgs/PolygonStamped explore_boundary

================================================================================
MSG: geometry_msgs/PolygonStamped
# This represents a Polygon with reference coordinate frame and timestamp
Header header
Polygon polygon

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
# 0: no frame
# 1: global frame
string frame_id

================================================================================
MSG: geometry_msgs/Polygon
#A specification of a polygon where the first and last points are assumed to be connected
Point32[] points

================================================================================
MSG: geometry_msgs/Point32
# This contains the position of a point in free space(with 32 bits of precision).
# It is recommeded to use Point wherever possible instead of Point32.  
# 
# This recommendation is to promote interoperability.  
#
# This message is designed to take up less space when sending
# lots of points at once, as in the case of a PointCloud.  

float32 x
float32 y
---

")



(provide :frontier_exploration/UpdateBoundaryPolygon "fcd73e86a17cffec115813ce5a863c84")


