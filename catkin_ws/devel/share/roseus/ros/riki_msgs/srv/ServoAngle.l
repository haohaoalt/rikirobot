;; Auto-generated. Do not edit!


(when (boundp 'riki_msgs::ServoAngle)
  (if (not (find-package "RIKI_MSGS"))
    (make-package "RIKI_MSGS"))
  (shadow 'ServoAngle (find-package "RIKI_MSGS")))
(unless (find-package "RIKI_MSGS::SERVOANGLE")
  (make-package "RIKI_MSGS::SERVOANGLE"))
(unless (find-package "RIKI_MSGS::SERVOANGLEREQUEST")
  (make-package "RIKI_MSGS::SERVOANGLEREQUEST"))
(unless (find-package "RIKI_MSGS::SERVOANGLERESPONSE")
  (make-package "RIKI_MSGS::SERVOANGLERESPONSE"))

(in-package "ROS")





(defclass riki_msgs::ServoAngleRequest
  :super ros::object
  :slots (_Servo1 _Servo2 ))

(defmethod riki_msgs::ServoAngleRequest
  (:init
   (&key
    ((:Servo1 __Servo1) 0)
    ((:Servo2 __Servo2) 0)
    )
   (send-super :init)
   (setq _Servo1 (round __Servo1))
   (setq _Servo2 (round __Servo2))
   self)
  (:Servo1
   (&optional __Servo1)
   (if __Servo1 (setq _Servo1 __Servo1)) _Servo1)
  (:Servo2
   (&optional __Servo2)
   (if __Servo2 (setq _Servo2 __Servo2)) _Servo2)
  (:serialization-length
   ()
   (+
    ;; int32 _Servo1
    4
    ;; int32 _Servo2
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _Servo1
       (write-long _Servo1 s)
     ;; int32 _Servo2
       (write-long _Servo2 s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _Servo1
     (setq _Servo1 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _Servo2
     (setq _Servo2 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass riki_msgs::ServoAngleResponse
  :super ros::object
  :slots ())

(defmethod riki_msgs::ServoAngleResponse
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

(defclass riki_msgs::ServoAngle
  :super ros::object
  :slots ())

(setf (get riki_msgs::ServoAngle :md5sum-) "b1d39e7bb90536edb373b61068d04284")
(setf (get riki_msgs::ServoAngle :datatype-) "riki_msgs/ServoAngle")
(setf (get riki_msgs::ServoAngle :request) riki_msgs::ServoAngleRequest)
(setf (get riki_msgs::ServoAngle :response) riki_msgs::ServoAngleResponse)

(defmethod riki_msgs::ServoAngleRequest
  (:response () (instance riki_msgs::ServoAngleResponse :init)))

(setf (get riki_msgs::ServoAngleRequest :md5sum-) "b1d39e7bb90536edb373b61068d04284")
(setf (get riki_msgs::ServoAngleRequest :datatype-) "riki_msgs/ServoAngleRequest")
(setf (get riki_msgs::ServoAngleRequest :definition-)
      "int32 Servo1
int32 Servo2

---
")

(setf (get riki_msgs::ServoAngleResponse :md5sum-) "b1d39e7bb90536edb373b61068d04284")
(setf (get riki_msgs::ServoAngleResponse :datatype-) "riki_msgs/ServoAngleResponse")
(setf (get riki_msgs::ServoAngleResponse :definition-)
      "int32 Servo1
int32 Servo2

---
")



(provide :riki_msgs/ServoAngle "b1d39e7bb90536edb373b61068d04284")


