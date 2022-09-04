; Auto-generated. Do not edit!


(cl:in-package frontier_exploration-srv)


;//! \htmlinclude GetNextFrontier-request.msg.html

(cl:defclass <GetNextFrontier-request> (roslisp-msg-protocol:ros-message)
  ((start_pose
    :reader start_pose
    :initarg :start_pose
    :type geometry_msgs-msg:PoseStamped
    :initform (cl:make-instance 'geometry_msgs-msg:PoseStamped)))
)

(cl:defclass GetNextFrontier-request (<GetNextFrontier-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetNextFrontier-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetNextFrontier-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name frontier_exploration-srv:<GetNextFrontier-request> is deprecated: use frontier_exploration-srv:GetNextFrontier-request instead.")))

(cl:ensure-generic-function 'start_pose-val :lambda-list '(m))
(cl:defmethod start_pose-val ((m <GetNextFrontier-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader frontier_exploration-srv:start_pose-val is deprecated.  Use frontier_exploration-srv:start_pose instead.")
  (start_pose m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetNextFrontier-request>) ostream)
  "Serializes a message object of type '<GetNextFrontier-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'start_pose) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetNextFrontier-request>) istream)
  "Deserializes a message object of type '<GetNextFrontier-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'start_pose) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetNextFrontier-request>)))
  "Returns string type for a service object of type '<GetNextFrontier-request>"
  "frontier_exploration/GetNextFrontierRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetNextFrontier-request)))
  "Returns string type for a service object of type 'GetNextFrontier-request"
  "frontier_exploration/GetNextFrontierRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetNextFrontier-request>)))
  "Returns md5sum for a message object of type '<GetNextFrontier-request>"
  "4204bbb25df206dc841362c99d2c39cb")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetNextFrontier-request)))
  "Returns md5sum for a message object of type 'GetNextFrontier-request"
  "4204bbb25df206dc841362c99d2c39cb")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetNextFrontier-request>)))
  "Returns full string definition for message of type '<GetNextFrontier-request>"
  (cl:format cl:nil "geometry_msgs/PoseStamped start_pose~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetNextFrontier-request)))
  "Returns full string definition for message of type 'GetNextFrontier-request"
  (cl:format cl:nil "geometry_msgs/PoseStamped start_pose~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetNextFrontier-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'start_pose))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetNextFrontier-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetNextFrontier-request
    (cl:cons ':start_pose (start_pose msg))
))
;//! \htmlinclude GetNextFrontier-response.msg.html

(cl:defclass <GetNextFrontier-response> (roslisp-msg-protocol:ros-message)
  ((next_frontier
    :reader next_frontier
    :initarg :next_frontier
    :type geometry_msgs-msg:PoseStamped
    :initform (cl:make-instance 'geometry_msgs-msg:PoseStamped)))
)

(cl:defclass GetNextFrontier-response (<GetNextFrontier-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetNextFrontier-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetNextFrontier-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name frontier_exploration-srv:<GetNextFrontier-response> is deprecated: use frontier_exploration-srv:GetNextFrontier-response instead.")))

(cl:ensure-generic-function 'next_frontier-val :lambda-list '(m))
(cl:defmethod next_frontier-val ((m <GetNextFrontier-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader frontier_exploration-srv:next_frontier-val is deprecated.  Use frontier_exploration-srv:next_frontier instead.")
  (next_frontier m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetNextFrontier-response>) ostream)
  "Serializes a message object of type '<GetNextFrontier-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'next_frontier) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetNextFrontier-response>) istream)
  "Deserializes a message object of type '<GetNextFrontier-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'next_frontier) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetNextFrontier-response>)))
  "Returns string type for a service object of type '<GetNextFrontier-response>"
  "frontier_exploration/GetNextFrontierResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetNextFrontier-response)))
  "Returns string type for a service object of type 'GetNextFrontier-response"
  "frontier_exploration/GetNextFrontierResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetNextFrontier-response>)))
  "Returns md5sum for a message object of type '<GetNextFrontier-response>"
  "4204bbb25df206dc841362c99d2c39cb")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetNextFrontier-response)))
  "Returns md5sum for a message object of type 'GetNextFrontier-response"
  "4204bbb25df206dc841362c99d2c39cb")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetNextFrontier-response>)))
  "Returns full string definition for message of type '<GetNextFrontier-response>"
  (cl:format cl:nil "geometry_msgs/PoseStamped next_frontier~%~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetNextFrontier-response)))
  "Returns full string definition for message of type 'GetNextFrontier-response"
  (cl:format cl:nil "geometry_msgs/PoseStamped next_frontier~%~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetNextFrontier-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'next_frontier))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetNextFrontier-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetNextFrontier-response
    (cl:cons ':next_frontier (next_frontier msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetNextFrontier)))
  'GetNextFrontier-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetNextFrontier)))
  'GetNextFrontier-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetNextFrontier)))
  "Returns string type for a service object of type '<GetNextFrontier>"
  "frontier_exploration/GetNextFrontier")