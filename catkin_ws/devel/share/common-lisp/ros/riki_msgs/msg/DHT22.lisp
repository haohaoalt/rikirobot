; Auto-generated. Do not edit!


(cl:in-package riki_msgs-msg)


;//! \htmlinclude DHT22.msg.html

(cl:defclass <DHT22> (roslisp-msg-protocol:ros-message)
  ((Temperature
    :reader Temperature
    :initarg :Temperature
    :type cl:float
    :initform 0.0)
   (Humidity
    :reader Humidity
    :initarg :Humidity
    :type cl:float
    :initform 0.0))
)

(cl:defclass DHT22 (<DHT22>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DHT22>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DHT22)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name riki_msgs-msg:<DHT22> is deprecated: use riki_msgs-msg:DHT22 instead.")))

(cl:ensure-generic-function 'Temperature-val :lambda-list '(m))
(cl:defmethod Temperature-val ((m <DHT22>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader riki_msgs-msg:Temperature-val is deprecated.  Use riki_msgs-msg:Temperature instead.")
  (Temperature m))

(cl:ensure-generic-function 'Humidity-val :lambda-list '(m))
(cl:defmethod Humidity-val ((m <DHT22>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader riki_msgs-msg:Humidity-val is deprecated.  Use riki_msgs-msg:Humidity instead.")
  (Humidity m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DHT22>) ostream)
  "Serializes a message object of type '<DHT22>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'Temperature))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'Humidity))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DHT22>) istream)
  "Deserializes a message object of type '<DHT22>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'Temperature) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'Humidity) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DHT22>)))
  "Returns string type for a message object of type '<DHT22>"
  "riki_msgs/DHT22")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DHT22)))
  "Returns string type for a message object of type 'DHT22"
  "riki_msgs/DHT22")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DHT22>)))
  "Returns md5sum for a message object of type '<DHT22>"
  "5444ed9cc78ceaace5058c55fe815905")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DHT22)))
  "Returns md5sum for a message object of type 'DHT22"
  "5444ed9cc78ceaace5058c55fe815905")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DHT22>)))
  "Returns full string definition for message of type '<DHT22>"
  (cl:format cl:nil "float32 Temperature~%float32 Humidity~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DHT22)))
  "Returns full string definition for message of type 'DHT22"
  (cl:format cl:nil "float32 Temperature~%float32 Humidity~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DHT22>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DHT22>))
  "Converts a ROS message object to a list"
  (cl:list 'DHT22
    (cl:cons ':Temperature (Temperature msg))
    (cl:cons ':Humidity (Humidity msg))
))
