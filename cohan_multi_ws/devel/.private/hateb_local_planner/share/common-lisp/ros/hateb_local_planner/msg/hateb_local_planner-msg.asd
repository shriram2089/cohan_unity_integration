
(cl:in-package :asdf)

(defsystem "hateb_local_planner-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :costmap_converter-msg
               :geometry_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "FeedbackMsg" :depends-on ("_package_FeedbackMsg"))
    (:file "_package_FeedbackMsg" :depends-on ("_package"))
    (:file "ObstacleMsg" :depends-on ("_package_ObstacleMsg"))
    (:file "_package_ObstacleMsg" :depends-on ("_package"))
    (:file "OptimizationCost" :depends-on ("_package_OptimizationCost"))
    (:file "_package_OptimizationCost" :depends-on ("_package"))
    (:file "OptimizationCostArray" :depends-on ("_package_OptimizationCostArray"))
    (:file "_package_OptimizationCostArray" :depends-on ("_package"))
    (:file "TrajectoryMsg" :depends-on ("_package_TrajectoryMsg"))
    (:file "_package_TrajectoryMsg" :depends-on ("_package"))
    (:file "TrajectoryPointMsg" :depends-on ("_package_TrajectoryPointMsg"))
    (:file "_package_TrajectoryPointMsg" :depends-on ("_package"))
  ))