; Auto-generated. Do not edit!


(cl:in-package riki_msgs-msg)


;//! \htmlinclude Buzzer.msg.html

(cl:defclass <Buzzer> (roslisp-msg-protocol:ros-message)
  ((BUZZER1
    :reader BUZZER1
    :initarg :BUZZER1
    :type cl:integer
    :initform 0))
)

(cl:defclass Buzzer (<Buzzer>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Buzzer>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Buzzer)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name riki_msgs-msg:<Buzzer> is deprecated: use riki_msgs-msg:Buzzer instead.")))

(cl:ensure-generic-function 'BUZZER1-val :lambda-list '(m))
(cl:defmethod BUZZER1-val ((m <Buzzer>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader riki_msgs-msg:BUZZER1-val is deprecated.  Use riki_msgs-msg:BUZZER1 instead.")
  (BUZZER1 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Buzzer>) ostream)
  "Serializes a message object of type '<Buzzer>"
  (cl:let* ((signed (cl:slot-value msg 'BUZZER1)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Buzzer>) istream)
  "Deserializes a message object of type '<Buzzer>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'BUZZER1) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Buzzer>)))
  "Returns string type for a message object of type '<Buzzer>"
  "riki_msgs/Buzzer")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Buzzer)))
  "Returns string type for a message object of type 'Buzzer"
  "riki_msgs/Buzzer")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Buzzer>)))
  "Returns md5sum for a message object of type '<Buzzer>"
  "961d0bf227fa8152deae5f5d68ec086e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Buzzer)))
  "Returns md5sum for a message object of type 'Buzzer"
  "961d0bf227fa8152deae5f5d68ec086e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Buzzer>)))
  "Returns full string definition for message of type '<Buzzer>"
  (cl:format cl:nil "int32 BUZZER1~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Buzzer)))
  "Returns full string definition for message of type 'Buzzer"
  (cl:format cl:nil "int32 BUZZER1~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Buzzer>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Buzzer>))
  "Converts a ROS message object to a list"
  (cl:list 'Buzzer
    (cl:cons ':BUZZER1 (BUZZER1 msg))
))
