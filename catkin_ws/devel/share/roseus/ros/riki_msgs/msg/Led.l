;; Auto-generated. Do not edit!


(when (boundp 'riki_msgs::Led)
  (if (not (find-package "RIKI_MSGS"))
    (make-package "RIKI_MSGS"))
  (shadow 'Led (find-package "RIKI_MSGS")))
(unless (find-package "RIKI_MSGS::LED")
  (make-package "RIKI_MSGS::LED"))

(in-package "ROS")
;;//! \htmlinclude Led.msg.html


(defclass riki_msgs::Led
  :super ros::object
  :slots (_LED1 _LED2 _LED3 ))

(defmethod riki_msgs::Led
  (:init
   (&key
    ((:LED1 __LED1) 0)
    ((:LED2 __LED2) 0)
    ((:LED3 __LED3) 0)
    )
   (send-super :init)
   (setq _LED1 (round __LED1))
   (setq _LED2 (round __LED2))
   (setq _LED3 (round __LED3))
   self)
  (:LED1
   (&optional __LED1)
   (if __LED1 (setq _LED1 __LED1)) _LED1)
  (:LED2
   (&optional __LED2)
   (if __LED2 (setq _LED2 __LED2)) _LED2)
  (:LED3
   (&optional __LED3)
   (if __LED3 (setq _LED3 __LED3)) _LED3)
  (:serialization-length
   ()
   (+
    ;; int32 _LED1
    4
    ;; int32 _LED2
    4
    ;; int32 _LED3
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _LED1
       (write-long _LED1 s)
     ;; int32 _LED2
       (write-long _LED2 s)
     ;; int32 _LED3
       (write-long _LED3 s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _LED1
     (setq _LED1 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _LED2
     (setq _LED2 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _LED3
     (setq _LED3 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get riki_msgs::Led :md5sum-) "872502f8a1825d221fb8b98672c92037")
(setf (get riki_msgs::Led :datatype-) "riki_msgs/Led")
(setf (get riki_msgs::Led :definition-)
      "int32 LED1
int32 LED2
int32 LED3

")



(provide :riki_msgs/Led "872502f8a1825d221fb8b98672c92037")


