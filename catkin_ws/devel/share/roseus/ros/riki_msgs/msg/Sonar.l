;; Auto-generated. Do not edit!


(when (boundp 'riki_msgs::Sonar)
  (if (not (find-package "RIKI_MSGS"))
    (make-package "RIKI_MSGS"))
  (shadow 'Sonar (find-package "RIKI_MSGS")))
(unless (find-package "RIKI_MSGS::SONAR")
  (make-package "RIKI_MSGS::SONAR"))

(in-package "ROS")
;;//! \htmlinclude Sonar.msg.html


(defclass riki_msgs::Sonar
  :super ros::object
  :slots (_distance ))

(defmethod riki_msgs::Sonar
  (:init
   (&key
    ((:distance __distance) 0.0)
    )
   (send-super :init)
   (setq _distance (float __distance))
   self)
  (:distance
   (&optional __distance)
   (if __distance (setq _distance __distance)) _distance)
  (:serialization-length
   ()
   (+
    ;; float32 _distance
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _distance
       (sys::poke _distance (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _distance
     (setq _distance (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get riki_msgs::Sonar :md5sum-) "6e77fb10f0c8b4833ec273aa9ac74459")
(setf (get riki_msgs::Sonar :datatype-) "riki_msgs/Sonar")
(setf (get riki_msgs::Sonar :definition-)
      "float32 distance

")



(provide :riki_msgs/Sonar "6e77fb10f0c8b4833ec273aa9ac74459")


