;; Auto-generated. Do not edit!


(when (boundp 'riki_msgs::RcMode)
  (if (not (find-package "RIKI_MSGS"))
    (make-package "RIKI_MSGS"))
  (shadow 'RcMode (find-package "RIKI_MSGS")))
(unless (find-package "RIKI_MSGS::RCMODE")
  (make-package "RIKI_MSGS::RCMODE"))

(in-package "ROS")
;;//! \htmlinclude RcMode.msg.html


(defclass riki_msgs::RcMode
  :super ros::object
  :slots (_mode _vel ))

(defmethod riki_msgs::RcMode
  (:init
   (&key
    ((:mode __mode) 0)
    ((:vel __vel) 0.0)
    )
   (send-super :init)
   (setq _mode (round __mode))
   (setq _vel (float __vel))
   self)
  (:mode
   (&optional __mode)
   (if __mode (setq _mode __mode)) _mode)
  (:vel
   (&optional __vel)
   (if __vel (setq _vel __vel)) _vel)
  (:serialization-length
   ()
   (+
    ;; int32 _mode
    4
    ;; float32 _vel
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _mode
       (write-long _mode s)
     ;; float32 _vel
       (sys::poke _vel (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _mode
     (setq _mode (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _vel
     (setq _vel (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get riki_msgs::RcMode :md5sum-) "0100e89a14982aa4b900add7d4fef3b1")
(setf (get riki_msgs::RcMode :datatype-) "riki_msgs/RcMode")
(setf (get riki_msgs::RcMode :definition-)
      "int32 mode
float32 vel

")



(provide :riki_msgs/RcMode "0100e89a14982aa4b900add7d4fef3b1")


