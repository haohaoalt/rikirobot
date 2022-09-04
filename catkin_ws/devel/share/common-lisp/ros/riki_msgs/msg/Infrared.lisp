; Auto-generated. Do not edit!


(cl:in-package riki_msgs-msg)


;//! \htmlinclude Infrared.msg.html

(cl:defclass <Infrared> (roslisp-msg-protocol:ros-message)
  ((front
    :reader front
    :initarg :front
    :type cl:float
    :initform 0.0)
   (rear
    :reader rear
    :initarg :rear
    :type cl:float
    :initform 0.0))
)

(cl:defclass Infrared (<Infrared>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Infrared>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Infrared)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name riki_msgs-msg:<Infrared> is deprecated: use riki_msgs-msg:Infrared instead.")))

(cl:ensure-generic-function 'front-val :lambda-list '(m))
(cl:defmethod front-val ((m <Infrared>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader riki_msgs-msg:front-val is deprecated.  Use riki_msgs-msg:front instead.")
  (front m))

(cl:ensure-generic-function 'rear-val :lambda-list '(m))
(cl:defmethod rear-val ((m <Infrared>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader riki_msgs-msg:rear-val is deprecated.  Use riki_msgs-msg:rear instead.")
  (rear m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Infrared>) ostream)
  "Serializes a message object of type '<Infrared>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'front))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'rear))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Infrared>) istream)
  "Deserializes a message object of type '<Infrared>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'front) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'rear) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Infrared>)))
  "Returns string type for a message object of type '<Infrared>"
  "riki_msgs/Infrared")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Infrared)))
  "Returns string type for a message object of type 'Infrared"
  "riki_msgs/Infrared")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Infrared>)))
  "Returns md5sum for a message object of type '<Infrared>"
  "25f4ca8647150542dc24ea09b80ff4f1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Infrared)))
  "Returns md5sum for a message object of type 'Infrared"
  "25f4ca8647150542dc24ea09b80ff4f1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Infrared>)))
  "Returns full string definition for message of type '<Infrared>"
  (cl:format cl:nil "float32 front~%float32 rear~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Infrared)))
  "Returns full string definition for message of type 'Infrared"
  (cl:format cl:nil "float32 front~%float32 rear~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Infrared>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Infrared>))
  "Converts a ROS message object to a list"
  (cl:list 'Infrared
    (cl:cons ':front (front msg))
    (cl:cons ':rear (rear msg))
))
