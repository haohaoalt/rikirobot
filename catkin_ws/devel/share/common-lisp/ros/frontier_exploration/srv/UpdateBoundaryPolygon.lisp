; Auto-generated. Do not edit!


(cl:in-package frontier_exploration-srv)


;//! \htmlinclude UpdateBoundaryPolygon-request.msg.html

(cl:defclass <UpdateBoundaryPolygon-request> (roslisp-msg-protocol:ros-message)
  ((explore_boundary
    :reader explore_boundary
    :initarg :explore_boundary
    :type geometry_msgs-msg:PolygonStamped
    :initform (cl:make-instance 'geometry_msgs-msg:PolygonStamped)))
)

(cl:defclass UpdateBoundaryPolygon-request (<UpdateBoundaryPolygon-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <UpdateBoundaryPolygon-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'UpdateBoundaryPolygon-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name frontier_exploration-srv:<UpdateBoundaryPolygon-request> is deprecated: use frontier_exploration-srv:UpdateBoundaryPolygon-request instead.")))

(cl:ensure-generic-function 'explore_boundary-val :lambda-list '(m))
(cl:defmethod explore_boundary-val ((m <UpdateBoundaryPolygon-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader frontier_exploration-srv:explore_boundary-val is deprecated.  Use frontier_exploration-srv:explore_boundary instead.")
  (explore_boundary m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <UpdateBoundaryPolygon-request>) ostream)
  "Serializes a message object of type '<UpdateBoundaryPolygon-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'explore_boundary) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <UpdateBoundaryPolygon-request>) istream)
  "Deserializes a message object of type '<UpdateBoundaryPolygon-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'explore_boundary) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<UpdateBoundaryPolygon-request>)))
  "Returns string type for a service object of type '<UpdateBoundaryPolygon-request>"
  "frontier_exploration/UpdateBoundaryPolygonRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'UpdateBoundaryPolygon-request)))
  "Returns string type for a service object of type 'UpdateBoundaryPolygon-request"
  "frontier_exploration/UpdateBoundaryPolygonRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<UpdateBoundaryPolygon-request>)))
  "Returns md5sum for a message object of type '<UpdateBoundaryPolygon-request>"
  "fcd73e86a17cffec115813ce5a863c84")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'UpdateBoundaryPolygon-request)))
  "Returns md5sum for a message object of type 'UpdateBoundaryPolygon-request"
  "fcd73e86a17cffec115813ce5a863c84")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<UpdateBoundaryPolygon-request>)))
  "Returns full string definition for message of type '<UpdateBoundaryPolygon-request>"
  (cl:format cl:nil "geometry_msgs/PolygonStamped explore_boundary~%~%================================================================================~%MSG: geometry_msgs/PolygonStamped~%# This represents a Polygon with reference coordinate frame and timestamp~%Header header~%Polygon polygon~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Polygon~%#A specification of a polygon where the first and last points are assumed to be connected~%Point32[] points~%~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'UpdateBoundaryPolygon-request)))
  "Returns full string definition for message of type 'UpdateBoundaryPolygon-request"
  (cl:format cl:nil "geometry_msgs/PolygonStamped explore_boundary~%~%================================================================================~%MSG: geometry_msgs/PolygonStamped~%# This represents a Polygon with reference coordinate frame and timestamp~%Header header~%Polygon polygon~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Polygon~%#A specification of a polygon where the first and last points are assumed to be connected~%Point32[] points~%~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <UpdateBoundaryPolygon-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'explore_boundary))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <UpdateBoundaryPolygon-request>))
  "Converts a ROS message object to a list"
  (cl:list 'UpdateBoundaryPolygon-request
    (cl:cons ':explore_boundary (explore_boundary msg))
))
;//! \htmlinclude UpdateBoundaryPolygon-response.msg.html

(cl:defclass <UpdateBoundaryPolygon-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass UpdateBoundaryPolygon-response (<UpdateBoundaryPolygon-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <UpdateBoundaryPolygon-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'UpdateBoundaryPolygon-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name frontier_exploration-srv:<UpdateBoundaryPolygon-response> is deprecated: use frontier_exploration-srv:UpdateBoundaryPolygon-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <UpdateBoundaryPolygon-response>) ostream)
  "Serializes a message object of type '<UpdateBoundaryPolygon-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <UpdateBoundaryPolygon-response>) istream)
  "Deserializes a message object of type '<UpdateBoundaryPolygon-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<UpdateBoundaryPolygon-response>)))
  "Returns string type for a service object of type '<UpdateBoundaryPolygon-response>"
  "frontier_exploration/UpdateBoundaryPolygonResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'UpdateBoundaryPolygon-response)))
  "Returns string type for a service object of type 'UpdateBoundaryPolygon-response"
  "frontier_exploration/UpdateBoundaryPolygonResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<UpdateBoundaryPolygon-response>)))
  "Returns md5sum for a message object of type '<UpdateBoundaryPolygon-response>"
  "fcd73e86a17cffec115813ce5a863c84")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'UpdateBoundaryPolygon-response)))
  "Returns md5sum for a message object of type 'UpdateBoundaryPolygon-response"
  "fcd73e86a17cffec115813ce5a863c84")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<UpdateBoundaryPolygon-response>)))
  "Returns full string definition for message of type '<UpdateBoundaryPolygon-response>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'UpdateBoundaryPolygon-response)))
  "Returns full string definition for message of type 'UpdateBoundaryPolygon-response"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <UpdateBoundaryPolygon-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <UpdateBoundaryPolygon-response>))
  "Converts a ROS message object to a list"
  (cl:list 'UpdateBoundaryPolygon-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'UpdateBoundaryPolygon)))
  'UpdateBoundaryPolygon-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'UpdateBoundaryPolygon)))
  'UpdateBoundaryPolygon-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'UpdateBoundaryPolygon)))
  "Returns string type for a service object of type '<UpdateBoundaryPolygon>"
  "frontier_exploration/UpdateBoundaryPolygon")