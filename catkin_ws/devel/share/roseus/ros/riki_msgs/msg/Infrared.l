;; Auto-generated. Do not edit!


(when (boundp 'riki_msgs::Infrared)
  (if (not (find-package "RIKI_MSGS"))
    (make-package "RIKI_MSGS"))
  (shadow 'Infrared (find-package "RIKI_MSGS")))
(unless (find-package "RIKI_MSGS::INFRARED")
  (make-package "RIKI_MSGS::INFRARED"))

(in-package "ROS")
;;//! \htmlinclude Infrared.msg.html


(defclass riki_msgs::Infrared
  :super ros::object
  :slots (_front _rear ))

(defmethod riki_msgs::Infrared
  (:init
   (&key
    ((:front __front) 0.0)
    ((:rear __rear) 0.0)
    )
   (send-super :init)
   (setq _front (float __front))
   (setq _rear (float __rear))
   self)
  (:front
   (&optional __front)
   (if __front (setq _front __front)) _front)
  (:rear
   (&optional __rear)
   (if __rear (setq _rear __rear)) _rear)
  (:serialization-length
   ()
   (+
    ;; float32 _front
    4
    ;; float32 _rear
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _front
       (sys::poke _front (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _rear
       (sys::poke _rear (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _front
     (setq _front (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _rear
     (setq _rear (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get riki_msgs::Infrared :md5sum-) "25f4ca8647150542dc24ea09b80ff4f1")
(setf (get riki_msgs::Infrared :datatype-) "riki_msgs/Infrared")
(setf (get riki_msgs::Infrared :definition-)
      "float32 front
float32 rear


")



(provide :riki_msgs/Infrared "25f4ca8647150542dc24ea09b80ff4f1")


