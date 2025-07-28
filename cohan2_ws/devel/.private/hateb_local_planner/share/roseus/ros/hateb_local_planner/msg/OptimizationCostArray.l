;; Auto-generated. Do not edit!


(when (boundp 'hateb_local_planner::OptimizationCostArray)
  (if (not (find-package "HATEB_LOCAL_PLANNER"))
    (make-package "HATEB_LOCAL_PLANNER"))
  (shadow 'OptimizationCostArray (find-package "HATEB_LOCAL_PLANNER")))
(unless (find-package "HATEB_LOCAL_PLANNER::OPTIMIZATIONCOSTARRAY")
  (make-package "HATEB_LOCAL_PLANNER::OPTIMIZATIONCOSTARRAY"))

(in-package "ROS")
;;//! \htmlinclude OptimizationCostArray.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass hateb_local_planner::OptimizationCostArray
  :super ros::object
  :slots (_header _costs ))

(defmethod hateb_local_planner::OptimizationCostArray
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:costs __costs) ())
    )
   (send-super :init)
   (setq _header __header)
   (setq _costs __costs)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:costs
   (&rest __costs)
   (if (keywordp (car __costs))
       (send* _costs __costs)
     (progn
       (if __costs (setq _costs (car __costs)))
       _costs)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; hateb_local_planner/OptimizationCost[] _costs
    (apply #'+ (send-all _costs :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; hateb_local_planner/OptimizationCost[] _costs
     (write-long (length _costs) s)
     (dolist (elem _costs)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; hateb_local_planner/OptimizationCost[] _costs
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _costs (let (r) (dotimes (i n) (push (instance hateb_local_planner::OptimizationCost :init) r)) r))
     (dolist (elem- _costs)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get hateb_local_planner::OptimizationCostArray :md5sum-) "f4f6ed21c925a566cd764816f623c1cb")
(setf (get hateb_local_planner::OptimizationCostArray :datatype-) "hateb_local_planner/OptimizationCostArray")
(setf (get hateb_local_planner::OptimizationCostArray :definition-)
      "std_msgs/Header header
hateb_local_planner/OptimizationCost[] costs

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
MSG: hateb_local_planner/OptimizationCost
# cost types
int8 TIME_OPTIMALITY=0
int8 KINEMATIC_DD=1
int8 KINEMATIC_CL=2
int8 ROBOT_VEL=3
int8 AGENT_VEL=4
int8 ROBOT_ACC=5
int8 AGENT_ACC=6
int8 OBSTACLE=7
int8 DYNAMIC_OBSTACLE=8
int8 VIA_POINT=9
int8 AGENT_ROBOT_SAFETY=10
int8 AGENT_AGENT_SAFETY=11
int8 AGENT_ROBOT_REL_VEL=12
int8 AGENT_ROBOT_MIN_DIST=13
int8 AGENT_ROBOT_VISIBILITY=14

int8    type
float64 cost
float64[] costs_arr

")



(provide :hateb_local_planner/OptimizationCostArray "f4f6ed21c925a566cd764816f623c1cb")


