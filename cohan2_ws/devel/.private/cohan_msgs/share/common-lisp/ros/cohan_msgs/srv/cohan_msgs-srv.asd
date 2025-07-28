
(cl:in-package :asdf)

(defsystem "cohan_msgs-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :cohan_msgs-msg
               :geometry_msgs-msg
               :nav_msgs-msg
)
  :components ((:file "_package")
    (:file "GetTrajectory" :depends-on ("_package_GetTrajectory"))
    (:file "_package_GetTrajectory" :depends-on ("_package"))
    (:file "Optimize" :depends-on ("_package_Optimize"))
    (:file "_package_Optimize" :depends-on ("_package"))
  ))