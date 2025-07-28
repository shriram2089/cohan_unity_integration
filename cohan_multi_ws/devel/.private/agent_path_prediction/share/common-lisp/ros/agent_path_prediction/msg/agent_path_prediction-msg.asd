
(cl:in-package :asdf)

(defsystem "agent_path_prediction-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
)
  :components ((:file "_package")
    (:file "AgentPose" :depends-on ("_package_AgentPose"))
    (:file "_package_AgentPose" :depends-on ("_package"))
    (:file "PredictedGoal" :depends-on ("_package_PredictedGoal"))
    (:file "_package_PredictedGoal" :depends-on ("_package"))
    (:file "PredictedPoses" :depends-on ("_package_PredictedPoses"))
    (:file "_package_PredictedPoses" :depends-on ("_package"))
  ))