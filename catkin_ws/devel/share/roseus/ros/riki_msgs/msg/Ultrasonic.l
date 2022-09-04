;; Auto-generated. Do not edit!


(when (boundp 'riki_msgs::Ultrasonic)
  (if (not (find-package "RIKI_MSGS"))
    (make-package "RIKI_MSGS"))
  (shadow 'Ultrasonic (find-package "RIKI_MSGS")))
(unless (find-package "RIKI_MSGS::ULTRASONIC")
  (make-package "RIKI_MSGS::ULTRASONIC"))

(in-package "ROS")
;;//! \htmlinclude Ultrasonic.msg.html


(defclass riki_msgs::Ultrasonic
  :super ros::object
  :slots (_front _left _right ))

(defmethod riki_msgs::Ultrasonic
  (:init
   (&key
    ((:front __front) 0.0)
    ((:left __left) 0.0)
    ((:right __right) 0.0)
    )
   (send-super :init)
   (setq _front (float __front))
   (setq _left (float __left))
   (setq _right (float __right))
   self)
  (:front
   (&optional __front)
   (if __front (setq _front __front)) _front)
  (:left
   (&optional __left)
   (if __left (setq _left __left)) _left)
  (:right
   (&optional __right)
   (if __right (setq _right __right)) _right)
  (:serialization-length
   ()
   (+
    ;; float32 _front
    4
    ;; float32 _left
    4
    ;; float32 _right
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _front
       (sys::poke _front (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _left
       (sys::poke _left (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _right
       (sys::poke _right (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _front
     (setq _front (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _left
     (setq _left (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _right
     (setq _right (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get riki_msgs::Ultrasonic :md5sum-) "c69b6708342d9a4721f01e55dbb0d446")
(setf (get riki_msgs::Ultrasonic :datatype-) "riki_msgs/Ultrasonic")
(setf (get riki_msgs::Ultrasonic :definition-)
      "float32 front
float32 left
float32 right 

")



(provide :riki_msgs/Ultrasonic "c69b6708342d9a4721f01e55dbb0d446")


