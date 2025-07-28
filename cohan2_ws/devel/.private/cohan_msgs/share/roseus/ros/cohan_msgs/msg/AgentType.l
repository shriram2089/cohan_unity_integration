;; Auto-generated. Do not edit!


(when (boundp 'cohan_msgs::AgentType)
  (if (not (find-package "COHAN_MSGS"))
    (make-package "COHAN_MSGS"))
  (shadow 'AgentType (find-package "COHAN_MSGS")))
(unless (find-package "COHAN_MSGS::AGENTTYPE")
  (make-package "COHAN_MSGS::AGENTTYPE"))

(in-package "ROS")
;;//! \htmlinclude AgentType.msg.html


(intern "*ROBOT*" (find-package "COHAN_MSGS::AGENTTYPE"))
(shadow '*ROBOT* (find-package "COHAN_MSGS::AGENTTYPE"))
(defconstant cohan_msgs::AgentType::*ROBOT* 0)
(intern "*HUMAN*" (find-package "COHAN_MSGS::AGENTTYPE"))
(shadow '*HUMAN* (find-package "COHAN_MSGS::AGENTTYPE"))
(defconstant cohan_msgs::AgentType::*HUMAN* 1)

(defun cohan_msgs::AgentType-to-symbol (const)
  (cond
        ((= const 0) 'cohan_msgs::AgentType::*ROBOT*)
        ((= const 1) 'cohan_msgs::AgentType::*HUMAN*)
        (t nil)))

(defclass cohan_msgs::AgentType
  :super ros::object
  :slots ())

(defmethod cohan_msgs::AgentType
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(setf (get cohan_msgs::AgentType :md5sum-) "5beb948e85cadcdc28356d202c4aeecd")
(setf (get cohan_msgs::AgentType :datatype-) "cohan_msgs/AgentType")
(setf (get cohan_msgs::AgentType :definition-)
      "# agent types
int8 ROBOT=0
int8 HUMAN=1

")



(provide :cohan_msgs/AgentType "5beb948e85cadcdc28356d202c4aeecd")


