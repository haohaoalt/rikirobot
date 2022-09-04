; Auto-generated. Do not edit!


(cl:in-package riki_msgs-msg)


;//! \htmlinclude Ultrasonic.msg.html

(cl:defclass <Ultrasonic> (roslisp-msg-protocol:ros-message)
  ((front
    :reader front
    :initarg :front
    :type cl:float
    :initform 0.0)
   (left
    :reader left
    :initarg :left
    :type cl:float
    :initform 0.0)
   (right
    :reader right
    :initarg :right
    :type cl:float
    :initform 0.0))
)

(cl:defclass Ultrasonic (<Ultrasonic>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Ultrasonic>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Ultrasonic)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name riki_msgs-msg:<Ultrasonic> is deprecated: use riki_msgs-msg:Ultrasonic instead.")))

(cl:ensure-generic-function 'front-val :lambda-list '(m))
(cl:defmethod front-val ((m <Ultrasonic>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader riki_msgs-msg:front-val is deprecated.  Use riki_msgs-msg:front instead.")
  (front m))

(cl:ensure-generic-function 'left-val :lambda-list '(m))
(cl:defmethod left-val ((m <Ultrasonic>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader riki_msgs-msg:left-val is deprecated.  Use riki_msgs-msg:left instead.")
  (left m))

(cl:ensure-generic-function 'right-val :lambda-list '(m))
(cl:defmethod right-val ((m <Ultrasonic>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader riki_msgs-msg:right-val is deprecated.  Use riki_msgs-msg:right instead.")
  (right m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Ultrasonic>) ostream)
  "Serializes a message object of type '<Ultrasonic>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'front))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'left))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'right))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Ultrasonic>) istream)
  "Deserializes a message object of type '<Ultrasonic>"
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
    (cl:setf (cl:slot-value msg 'left) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'right) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Ultrasonic>)))
  "Returns string type for a message object of type '<Ultrasonic>"
  "riki_msgs/Ultrasonic")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Ultrasonic)))
  "Returns string type for a message object of type 'Ultrasonic"
  "riki_msgs/Ultrasonic")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Ultrasonic>)))
  "Returns md5sum for a message object of type '<Ultrasonic>"
  "c69b6708342d9a4721f01e55dbb0d446")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Ultrasonic)))
  "Returns md5sum for a message object of type 'Ultrasonic"
  "c69b6708342d9a4721f01e55dbb0d446")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Ultrasonic>)))
  "Returns full string definition for message of type '<Ultrasonic>"
  (cl:format cl:nil "float32 front~%float32 left~%float32 right ~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Ultrasonic)))
  "Returns full string definition for message of type 'Ultrasonic"
  (cl:format cl:nil "float32 front~%float32 left~%float32 right ~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Ultrasonic>))
  (cl:+ 0
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Ultrasonic>))
  "Converts a ROS message object to a list"
  (cl:list 'Ultrasonic
    (cl:cons ':front (front msg))
    (cl:cons ':left (left msg))
    (cl:cons ':right (right msg))
))
