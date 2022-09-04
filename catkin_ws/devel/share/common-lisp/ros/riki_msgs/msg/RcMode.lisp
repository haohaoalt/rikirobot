; Auto-generated. Do not edit!


(cl:in-package riki_msgs-msg)


;//! \htmlinclude RcMode.msg.html

(cl:defclass <RcMode> (roslisp-msg-protocol:ros-message)
  ((mode
    :reader mode
    :initarg :mode
    :type cl:integer
    :initform 0)
   (vel
    :reader vel
    :initarg :vel
    :type cl:float
    :initform 0.0))
)

(cl:defclass RcMode (<RcMode>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RcMode>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RcMode)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name riki_msgs-msg:<RcMode> is deprecated: use riki_msgs-msg:RcMode instead.")))

(cl:ensure-generic-function 'mode-val :lambda-list '(m))
(cl:defmethod mode-val ((m <RcMode>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader riki_msgs-msg:mode-val is deprecated.  Use riki_msgs-msg:mode instead.")
  (mode m))

(cl:ensure-generic-function 'vel-val :lambda-list '(m))
(cl:defmethod vel-val ((m <RcMode>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader riki_msgs-msg:vel-val is deprecated.  Use riki_msgs-msg:vel instead.")
  (vel m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RcMode>) ostream)
  "Serializes a message object of type '<RcMode>"
  (cl:let* ((signed (cl:slot-value msg 'mode)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'vel))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RcMode>) istream)
  "Deserializes a message object of type '<RcMode>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'mode) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'vel) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RcMode>)))
  "Returns string type for a message object of type '<RcMode>"
  "riki_msgs/RcMode")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RcMode)))
  "Returns string type for a message object of type 'RcMode"
  "riki_msgs/RcMode")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RcMode>)))
  "Returns md5sum for a message object of type '<RcMode>"
  "0100e89a14982aa4b900add7d4fef3b1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RcMode)))
  "Returns md5sum for a message object of type 'RcMode"
  "0100e89a14982aa4b900add7d4fef3b1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RcMode>)))
  "Returns full string definition for message of type '<RcMode>"
  (cl:format cl:nil "int32 mode~%float32 vel~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RcMode)))
  "Returns full string definition for message of type 'RcMode"
  (cl:format cl:nil "int32 mode~%float32 vel~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RcMode>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RcMode>))
  "Converts a ROS message object to a list"
  (cl:list 'RcMode
    (cl:cons ':mode (mode msg))
    (cl:cons ':vel (vel msg))
))
