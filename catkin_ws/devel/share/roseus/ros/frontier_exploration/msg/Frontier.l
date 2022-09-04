;; Auto-generated. Do not edit!


(when (boundp 'frontier_exploration::Frontier)
  (if (not (find-package "FRONTIER_EXPLORATION"))
    (make-package "FRONTIER_EXPLORATION"))
  (shadow 'Frontier (find-package "FRONTIER_EXPLORATION")))
(unless (find-package "FRONTIER_EXPLORATION::FRONTIER")
  (make-package "FRONTIER_EXPLORATION::FRONTIER"))

(in-package "ROS")
;;//! \htmlinclude Frontier.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass frontier_exploration::Frontier
  :super ros::object
  :slots (_size _min_distance _initial _centroid _middle ))

(defmethod frontier_exploration::Frontier
  (:init
   (&key
    ((:size __size) 0)
    ((:min_distance __min_distance) 0.0)
    ((:initial __initial) (instance geometry_msgs::Point :init))
    ((:centroid __centroid) (instance geometry_msgs::Point :init))
    ((:middle __middle) (instance geometry_msgs::Point :init))
    )
   (send-super :init)
   (setq _size (round __size))
   (setq _min_distance (float __min_distance))
   (setq _initial __initial)
   (setq _centroid __centroid)
   (setq _middle __middle)
   self)
  (:size
   (&optional __size)
   (if __size (setq _size __size)) _size)
  (:min_distance
   (&optional __min_distance)
   (if __min_distance (setq _min_distance __min_distance)) _min_distance)
  (:initial
   (&rest __initial)
   (if (keywordp (car __initial))
       (send* _initial __initial)
     (progn
       (if __initial (setq _initial (car __initial)))
       _initial)))
  (:centroid
   (&rest __centroid)
   (if (keywordp (car __centroid))
       (send* _centroid __centroid)
     (progn
       (if __centroid (setq _centroid (car __centroid)))
       _centroid)))
  (:middle
   (&rest __middle)
   (if (keywordp (car __middle))
       (send* _middle __middle)
     (progn
       (if __middle (setq _middle (car __middle)))
       _middle)))
  (:serialization-length
   ()
   (+
    ;; uint32 _size
    4
    ;; float64 _min_distance
    8
    ;; geometry_msgs/Point _initial
    (send _initial :serialization-length)
    ;; geometry_msgs/Point _centroid
    (send _centroid :serialization-length)
    ;; geometry_msgs/Point _middle
    (send _middle :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _size
       (write-long _size s)
     ;; float64 _min_distance
       (sys::poke _min_distance (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; geometry_msgs/Point _initial
       (send _initial :serialize s)
     ;; geometry_msgs/Point _centroid
       (send _centroid :serialize s)
     ;; geometry_msgs/Point _middle
       (send _middle :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _size
     (setq _size (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64 _min_distance
     (setq _min_distance (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; geometry_msgs/Point _initial
     (send _initial :deserialize buf ptr-) (incf ptr- (send _initial :serialization-length))
   ;; geometry_msgs/Point _centroid
     (send _centroid :deserialize buf ptr-) (incf ptr- (send _centroid :serialization-length))
   ;; geometry_msgs/Point _middle
     (send _middle :deserialize buf ptr-) (incf ptr- (send _middle :serialization-length))
   ;;
   self)
  )

(setf (get frontier_exploration::Frontier :md5sum-) "1325c0e43f607455fdee9e36462f6ba0")
(setf (get frontier_exploration::Frontier :datatype-) "frontier_exploration/Frontier")
(setf (get frontier_exploration::Frontier :definition-)
      "uint32 size
float64 min_distance
geometry_msgs/Point initial
geometry_msgs/Point centroid
geometry_msgs/Point middle

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

")



(provide :frontier_exploration/Frontier "1325c0e43f607455fdee9e36462f6ba0")


