;; Auto-generated. Do not edit!


(when (boundp 'frontier_exploration::GetNextFrontier)
  (if (not (find-package "FRONTIER_EXPLORATION"))
    (make-package "FRONTIER_EXPLORATION"))
  (shadow 'GetNextFrontier (find-package "FRONTIER_EXPLORATION")))
(unless (find-package "FRONTIER_EXPLORATION::GETNEXTFRONTIER")
  (make-package "FRONTIER_EXPLORATION::GETNEXTFRONTIER"))
(unless (find-package "FRONTIER_EXPLORATION::GETNEXTFRONTIERREQUEST")
  (make-package "FRONTIER_EXPLORATION::GETNEXTFRONTIERREQUEST"))
(unless (find-package "FRONTIER_EXPLORATION::GETNEXTFRONTIERRESPONSE")
  (make-package "FRONTIER_EXPLORATION::GETNEXTFRONTIERRESPONSE"))

(in-package "ROS")

(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass frontier_exploration::GetNextFrontierRequest
  :super ros::object
  :slots (_start_pose ))

(defmethod frontier_exploration::GetNextFrontierRequest
  (:init
   (&key
    ((:start_pose __start_pose) (instance geometry_msgs::PoseStamped :init))
    )
   (send-super :init)
   (setq _start_pose __start_pose)
   self)
  (:start_pose
   (&rest __start_pose)
   (if (keywordp (car __start_pose))
       (send* _start_pose __start_pose)
     (progn
       (if __start_pose (setq _start_pose (car __start_pose)))
       _start_pose)))
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/PoseStamped _start_pose
    (send _start_pose :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/PoseStamped _start_pose
       (send _start_pose :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/PoseStamped _start_pose
     (send _start_pose :deserialize buf ptr-) (incf ptr- (send _start_pose :serialization-length))
   ;;
   self)
  )

(defclass frontier_exploration::GetNextFrontierResponse
  :super ros::object
  :slots (_next_frontier ))

(defmethod frontier_exploration::GetNextFrontierResponse
  (:init
   (&key
    ((:next_frontier __next_frontier) (instance geometry_msgs::PoseStamped :init))
    )
   (send-super :init)
   (setq _next_frontier __next_frontier)
   self)
  (:next_frontier
   (&rest __next_frontier)
   (if (keywordp (car __next_frontier))
       (send* _next_frontier __next_frontier)
     (progn
       (if __next_frontier (setq _next_frontier (car __next_frontier)))
       _next_frontier)))
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/PoseStamped _next_frontier
    (send _next_frontier :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/PoseStamped _next_frontier
       (send _next_frontier :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/PoseStamped _next_frontier
     (send _next_frontier :deserialize buf ptr-) (incf ptr- (send _next_frontier :serialization-length))
   ;;
   self)
  )

(defclass frontier_exploration::GetNextFrontier
  :super ros::object
  :slots ())

(setf (get frontier_exploration::GetNextFrontier :md5sum-) "4204bbb25df206dc841362c99d2c39cb")
(setf (get frontier_exploration::GetNextFrontier :datatype-) "frontier_exploration/GetNextFrontier")
(setf (get frontier_exploration::GetNextFrontier :request) frontier_exploration::GetNextFrontierRequest)
(setf (get frontier_exploration::GetNextFrontier :response) frontier_exploration::GetNextFrontierResponse)

(defmethod frontier_exploration::GetNextFrontierRequest
  (:response () (instance frontier_exploration::GetNextFrontierResponse :init)))

(setf (get frontier_exploration::GetNextFrontierRequest :md5sum-) "4204bbb25df206dc841362c99d2c39cb")
(setf (get frontier_exploration::GetNextFrontierRequest :datatype-) "frontier_exploration/GetNextFrontierRequest")
(setf (get frontier_exploration::GetNextFrontierRequest :definition-)
      "geometry_msgs/PoseStamped start_pose

================================================================================
MSG: geometry_msgs/PoseStamped
# A Pose with reference coordinate frame and timestamp
Header header
Pose pose

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
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w
---
geometry_msgs/PoseStamped next_frontier


================================================================================
MSG: geometry_msgs/PoseStamped
# A Pose with reference coordinate frame and timestamp
Header header
Pose pose

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
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w
")

(setf (get frontier_exploration::GetNextFrontierResponse :md5sum-) "4204bbb25df206dc841362c99d2c39cb")
(setf (get frontier_exploration::GetNextFrontierResponse :datatype-) "frontier_exploration/GetNextFrontierResponse")
(setf (get frontier_exploration::GetNextFrontierResponse :definition-)
      "geometry_msgs/PoseStamped start_pose

================================================================================
MSG: geometry_msgs/PoseStamped
# A Pose with reference coordinate frame and timestamp
Header header
Pose pose

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
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w
---
geometry_msgs/PoseStamped next_frontier


================================================================================
MSG: geometry_msgs/PoseStamped
# A Pose with reference coordinate frame and timestamp
Header header
Pose pose

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
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w
")



(provide :frontier_exploration/GetNextFrontier "4204bbb25df206dc841362c99d2c39cb")


