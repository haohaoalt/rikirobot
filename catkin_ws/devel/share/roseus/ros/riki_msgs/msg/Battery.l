;; Auto-generated. Do not edit!


(when (boundp 'riki_msgs::Battery)
  (if (not (find-package "RIKI_MSGS"))
    (make-package "RIKI_MSGS"))
  (shadow 'Battery (find-package "RIKI_MSGS")))
(unless (find-package "RIKI_MSGS::BATTERY")
  (make-package "RIKI_MSGS::BATTERY"))

(in-package "ROS")
;;//! \htmlinclude Battery.msg.html


(defclass riki_msgs::Battery
  :super ros::object
  :slots (_battery ))

(defmethod riki_msgs::Battery
  (:init
   (&key
    ((:battery __battery) 0.0)
    )
   (send-super :init)
   (setq _battery (float __battery))
   self)
  (:battery
   (&optional __battery)
   (if __battery (setq _battery __battery)) _battery)
  (:serialization-length
   ()
   (+
    ;; float32 _battery
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _battery
       (sys::poke _battery (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _battery
     (setq _battery (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get riki_msgs::Battery :md5sum-) "da7225c3562dd2b9b88bf15aa7eb6a9e")
(setf (get riki_msgs::Battery :datatype-) "riki_msgs/Battery")
(setf (get riki_msgs::Battery :definition-)
      "float32 battery

")



(provide :riki_msgs/Battery "da7225c3562dd2b9b88bf15aa7eb6a9e")


