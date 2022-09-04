;; Auto-generated. Do not edit!


(when (boundp 'riki_msgs::Buzzer)
  (if (not (find-package "RIKI_MSGS"))
    (make-package "RIKI_MSGS"))
  (shadow 'Buzzer (find-package "RIKI_MSGS")))
(unless (find-package "RIKI_MSGS::BUZZER")
  (make-package "RIKI_MSGS::BUZZER"))

(in-package "ROS")
;;//! \htmlinclude Buzzer.msg.html


(defclass riki_msgs::Buzzer
  :super ros::object
  :slots (_BUZZER1 ))

(defmethod riki_msgs::Buzzer
  (:init
   (&key
    ((:BUZZER1 __BUZZER1) 0)
    )
   (send-super :init)
   (setq _BUZZER1 (round __BUZZER1))
   self)
  (:BUZZER1
   (&optional __BUZZER1)
   (if __BUZZER1 (setq _BUZZER1 __BUZZER1)) _BUZZER1)
  (:serialization-length
   ()
   (+
    ;; int32 _BUZZER1
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _BUZZER1
       (write-long _BUZZER1 s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _BUZZER1
     (setq _BUZZER1 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get riki_msgs::Buzzer :md5sum-) "961d0bf227fa8152deae5f5d68ec086e")
(setf (get riki_msgs::Buzzer :datatype-) "riki_msgs/Buzzer")
(setf (get riki_msgs::Buzzer :definition-)
      "int32 BUZZER1

")



(provide :riki_msgs/Buzzer "961d0bf227fa8152deae5f5d68ec086e")


