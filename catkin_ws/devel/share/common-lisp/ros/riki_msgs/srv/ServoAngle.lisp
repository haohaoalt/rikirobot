; Auto-generated. Do not edit!


(cl:in-package riki_msgs-srv)


;//! \htmlinclude ServoAngle-request.msg.html

(cl:defclass <ServoAngle-request> (roslisp-msg-protocol:ros-message)
  ((Servo1
    :reader Servo1
    :initarg :Servo1
    :type cl:integer
    :initform 0)
   (Servo2
    :reader Servo2
    :initarg :Servo2
    :type cl:integer
    :initform 0))
)

(cl:defclass ServoAngle-request (<ServoAngle-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ServoAngle-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ServoAngle-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name riki_msgs-srv:<ServoAngle-request> is deprecated: use riki_msgs-srv:ServoAngle-request instead.")))

(cl:ensure-generic-function 'Servo1-val :lambda-list '(m))
(cl:defmethod Servo1-val ((m <ServoAngle-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader riki_msgs-srv:Servo1-val is deprecated.  Use riki_msgs-srv:Servo1 instead.")
  (Servo1 m))

(cl:ensure-generic-function 'Servo2-val :lambda-list '(m))
(cl:defmethod Servo2-val ((m <ServoAngle-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader riki_msgs-srv:Servo2-val is deprecated.  Use riki_msgs-srv:Servo2 instead.")
  (Servo2 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ServoAngle-request>) ostream)
  "Serializes a message object of type '<ServoAngle-request>"
  (cl:let* ((signed (cl:slot-value msg 'Servo1)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'Servo2)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ServoAngle-request>) istream)
  "Deserializes a message object of type '<ServoAngle-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'Servo1) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'Servo2) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ServoAngle-request>)))
  "Returns string type for a service object of type '<ServoAngle-request>"
  "riki_msgs/ServoAngleRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ServoAngle-request)))
  "Returns string type for a service object of type 'ServoAngle-request"
  "riki_msgs/ServoAngleRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ServoAngle-request>)))
  "Returns md5sum for a message object of type '<ServoAngle-request>"
  "b1d39e7bb90536edb373b61068d04284")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ServoAngle-request)))
  "Returns md5sum for a message object of type 'ServoAngle-request"
  "b1d39e7bb90536edb373b61068d04284")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ServoAngle-request>)))
  "Returns full string definition for message of type '<ServoAngle-request>"
  (cl:format cl:nil "int32 Servo1~%int32 Servo2~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ServoAngle-request)))
  "Returns full string definition for message of type 'ServoAngle-request"
  (cl:format cl:nil "int32 Servo1~%int32 Servo2~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ServoAngle-request>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ServoAngle-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ServoAngle-request
    (cl:cons ':Servo1 (Servo1 msg))
    (cl:cons ':Servo2 (Servo2 msg))
))
;//! \htmlinclude ServoAngle-response.msg.html

(cl:defclass <ServoAngle-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass ServoAngle-response (<ServoAngle-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ServoAngle-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ServoAngle-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name riki_msgs-srv:<ServoAngle-response> is deprecated: use riki_msgs-srv:ServoAngle-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ServoAngle-response>) ostream)
  "Serializes a message object of type '<ServoAngle-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ServoAngle-response>) istream)
  "Deserializes a message object of type '<ServoAngle-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ServoAngle-response>)))
  "Returns string type for a service object of type '<ServoAngle-response>"
  "riki_msgs/ServoAngleResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ServoAngle-response)))
  "Returns string type for a service object of type 'ServoAngle-response"
  "riki_msgs/ServoAngleResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ServoAngle-response>)))
  "Returns md5sum for a message object of type '<ServoAngle-response>"
  "b1d39e7bb90536edb373b61068d04284")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ServoAngle-response)))
  "Returns md5sum for a message object of type 'ServoAngle-response"
  "b1d39e7bb90536edb373b61068d04284")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ServoAngle-response>)))
  "Returns full string definition for message of type '<ServoAngle-response>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ServoAngle-response)))
  "Returns full string definition for message of type 'ServoAngle-response"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ServoAngle-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ServoAngle-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ServoAngle-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ServoAngle)))
  'ServoAngle-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ServoAngle)))
  'ServoAngle-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ServoAngle)))
  "Returns string type for a service object of type '<ServoAngle>"
  "riki_msgs/ServoAngle")