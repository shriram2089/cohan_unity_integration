;; Auto-generated. Do not edit!


(when (boundp 'cohan_msgs::AgentTimeToGoalArray)
  (if (not (find-package "COHAN_MSGS"))
    (make-package "COHAN_MSGS"))
  (shadow 'AgentTimeToGoalArray (find-package "COHAN_MSGS")))
(unless (find-package "COHAN_MSGS::AGENTTIMETOGOALARRAY")
  (make-package "COHAN_MSGS::AGENTTIMETOGOALARRAY"))

(in-package "ROS")
;;//! \htmlinclude AgentTimeToGoalArray.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass cohan_msgs::AgentTimeToGoalArray
  :super ros::object
  :slots (_header _times_to_goal ))

(defmethod cohan_msgs::AgentTimeToGoalArray
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:times_to_goal __times_to_goal) ())
    )
   (send-super :init)
   (setq _header __header)
   (setq _times_to_goal __times_to_goal)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:times_to_goal
   (&rest __times_to_goal)
   (if (keywordp (car __times_to_goal))
       (send* _times_to_goal __times_to_goal)
     (progn
       (if __times_to_goal (setq _times_to_goal (car __times_to_goal)))
       _times_to_goal)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; cohan_msgs/AgentTimeToGoal[] _times_to_goal
    (apply #'+ (send-all _times_to_goal :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; cohan_msgs/AgentTimeToGoal[] _times_to_goal
     (write-long (length _times_to_goal) s)
     (dolist (elem _times_to_goal)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; cohan_msgs/AgentTimeToGoal[] _times_to_goal
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _times_to_goal (let (r) (dotimes (i n) (push (instance cohan_msgs::AgentTimeToGoal :init) r)) r))
     (dolist (elem- _times_to_goal)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get cohan_msgs::AgentTimeToGoalArray :md5sum-) "e2409fda334715bb8c8e0025d4e039a0")
(setf (get cohan_msgs::AgentTimeToGoalArray :datatype-) "cohan_msgs/AgentTimeToGoalArray")
(setf (get cohan_msgs::AgentTimeToGoalArray :definition-)
      "std_msgs/Header             header
cohan_msgs/AgentTimeToGoal[] times_to_goal

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: cohan_msgs/AgentTimeToGoal
std_msgs/Header header
uint64          id
int8            type
duration        time_to_goal

")



(provide :cohan_msgs/AgentTimeToGoalArray "e2409fda334715bb8c8e0025d4e039a0")


