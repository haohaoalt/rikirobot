
(cl:in-package :asdf)

(defsystem "frontier_exploration-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
)
  :components ((:file "_package")
    (:file "GetNextFrontier" :depends-on ("_package_GetNextFrontier"))
    (:file "_package_GetNextFrontier" :depends-on ("_package"))
    (:file "UpdateBoundaryPolygon" :depends-on ("_package_UpdateBoundaryPolygon"))
    (:file "_package_UpdateBoundaryPolygon" :depends-on ("_package"))
  ))