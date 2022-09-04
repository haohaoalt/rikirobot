;; Auto-generated. Do not edit!


(when (boundp 'riki_msgs::Arm)
  (if (not (find-package "RIKI_MSGS"))
    (make-package "RIKI_MSGS"))
  (shadow 'Arm (find-package "RIKI_MSGS")))
(unless (find-package "RIKI_MSGS::ARM")
  (make-package "RIKI_MSGS::ARM"))

(in-package "ROS")
;;//! \htmlinclude Arm.msg.html


(defclass riki_msgs::Arm
  :super ros::object
  :slots (_id _time _position ))

(defmethod riki_msgs::Arm
  (:init
   (&key
    ((:id __id) 0)
    ((:time __time) 0)
    ((:position __position) 0)
    )
   (send-super :init)
   (setq _id (round __id))
   (setq _time (round __time))
   (setq _position (round __position))
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:time
   (&optional __time)
   (if __time (setq _time __time)) _time)
  (:position
   (&optional __position)
   (if __position (setq _position __position)) _position)
  (:serialization-length
   ()
   (+
    ;; int32 _id
    4
    ;; int32 _time
    4
    ;; int32 _position
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _id
       (write-long _id s)
     ;; int32 _time
       (write-long _time s)
     ;; int32 _position
       (write-long _position s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _id
     (setq _id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _time
     (setq _time (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _position
     (setq _position (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get riki_msgs::Arm :md5sum-) "86d4dc4a5a3509adfd2df685044bbd29")
(setf (get riki_msgs::Arm :datatype-) "riki_msgs/Arm")
(setf (get riki_msgs::Arm :definition-)
      "int32 id
int32 time
int32 position

")



(provide :riki_msgs/Arm "86d4dc4a5a3509adfd2df685044bbd29")


