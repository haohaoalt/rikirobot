
(cl:in-package :asdf)

(defsystem "riki_msgs-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "ServoAngle" :depends-on ("_package_ServoAngle"))
    (:file "_package_ServoAngle" :depends-on ("_package"))
  ))