
(cl:in-package :asdf)

(defsystem "agent_path_prediction-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "AgentPose" :depends-on ("_package_AgentPose"))
    (:file "_package_AgentPose" :depends-on ("_package"))
    (:file "AgentsInfo" :depends-on ("_package_AgentsInfo"))
    (:file "_package_AgentsInfo" :depends-on ("_package"))
    (:file "HumanInfo" :depends-on ("_package_HumanInfo"))
    (:file "_package_HumanInfo" :depends-on ("_package"))
    (:file "PredictedGoal" :depends-on ("_package_PredictedGoal"))
    (:file "_package_PredictedGoal" :depends-on ("_package"))
    (:file "PredictedGoals" :depends-on ("_package_PredictedGoals"))
    (:file "_package_PredictedGoals" :depends-on ("_package"))
    (:file "PredictedPoses" :depends-on ("_package_PredictedPoses"))
    (:file "_package_PredictedPoses" :depends-on ("_package"))
  ))