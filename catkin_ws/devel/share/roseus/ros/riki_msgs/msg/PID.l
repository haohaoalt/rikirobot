;; Auto-generated. Do not edit!


(when (boundp 'riki_msgs::PID)
  (if (not (find-package "RIKI_MSGS"))
    (make-package "RIKI_MSGS"))
  (shadow 'PID (find-package "RIKI_MSGS")))
(unless (find-package "RIKI_MSGS::PID")
  (make-package "RIKI_MSGS::PID"))

(in-package "ROS")
;;//! \htmlinclude PID.msg.html


(defclass riki_msgs::PID
  :super ros::object
  :slots (_p _d _i ))

(defmethod riki_msgs::PID
  (:init
   (&key
    ((:p __p) 0.0)
    ((:d __d) 0.0)
    ((:i __i) 0.0)
    )
   (send-super :init)
   (setq _p (float __p))
   (setq _d (float __d))
   (setq _i (float __i))
   self)
  (:p
   (&optional __p)
   (if __p (setq _p __p)) _p)
  (:d
   (&optional __d)
   (if __d (setq _d __d)) _d)
  (:i
   (&optional __i)
   (if __i (setq _i __i)) _i)
  (:serialization-length
   ()
   (+
    ;; float32 _p
    4
    ;; float32 _d
    4
    ;; float32 _i
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _p
       (sys::poke _p (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _d
       (sys::poke _d (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _i
       (sys::poke _i (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _p
     (setq _p (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _d
     (setq _d (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _i
     (setq _i (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get riki_msgs::PID :md5sum-) "a559df187bdf63f426d5f304b6b28bb4")
(setf (get riki_msgs::PID :datatype-) "riki_msgs/PID")
(setf (get riki_msgs::PID :definition-)
      "float32 p
float32 d
float32 i

")



(provide :riki_msgs/PID "a559df187bdf63f426d5f304b6b28bb4")


