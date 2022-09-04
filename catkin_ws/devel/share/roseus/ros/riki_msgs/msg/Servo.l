;; Auto-generated. Do not edit!


(when (boundp 'riki_msgs::Servo)
  (if (not (find-package "RIKI_MSGS"))
    (make-package "RIKI_MSGS"))
  (shadow 'Servo (find-package "RIKI_MSGS")))
(unless (find-package "RIKI_MSGS::SERVO")
  (make-package "RIKI_MSGS::SERVO"))

(in-package "ROS")
;;//! \htmlinclude Servo.msg.html


(defclass riki_msgs::Servo
  :super ros::object
  :slots (_Servo1 _Servo2 ))

(defmethod riki_msgs::Servo
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

(setf (get riki_msgs::Servo :md5sum-) "b1d39e7bb90536edb373b61068d04284")
(setf (get riki_msgs::Servo :datatype-) "riki_msgs/Servo")
(setf (get riki_msgs::Servo :definition-)
      "int32 Servo1
int32 Servo2

")



(provide :riki_msgs/Servo "b1d39e7bb90536edb373b61068d04284")


