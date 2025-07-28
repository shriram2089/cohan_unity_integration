
(cl:in-package :asdf)

(defsystem "agent_path_prediction-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :agent_path_prediction-msg
)
  :components ((:file "_package")
    (:file "AgentGoal" :depends-on ("_package_AgentGoal"))
    (:file "_package_AgentGoal" :depends-on ("_package"))
    (:file "AgentPosePredict" :depends-on ("_package_AgentPosePredict"))
    (:file "_package_AgentPosePredict" :depends-on ("_package"))
  ))