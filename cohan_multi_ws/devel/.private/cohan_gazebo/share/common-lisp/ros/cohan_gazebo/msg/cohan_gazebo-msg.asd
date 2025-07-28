
(cl:in-package :asdf)

(defsystem "cohan_gazebo-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "abortGoal" :depends-on ("_package_abortGoal"))
    (:file "_package_abortGoal" :depends-on ("_package"))
    (:file "setGoal" :depends-on ("_package_setGoal"))
    (:file "_package_setGoal" :depends-on ("_package"))
  ))