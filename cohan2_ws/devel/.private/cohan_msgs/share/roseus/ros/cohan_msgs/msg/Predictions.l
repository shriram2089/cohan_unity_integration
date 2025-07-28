;; Auto-generated. Do not edit!


(when (boundp 'cohan_msgs::Predictions)
  (if (not (find-package "COHAN_MSGS"))
    (make-package "COHAN_MSGS"))
  (shadow 'Predictions (find-package "COHAN_MSGS")))
(unless (find-package "COHAN_MSGS::PREDICTIONS")
  (make-package "COHAN_MSGS::PREDICTIONS"))

(in-package "ROS")
;;//! \htmlinclude Predictions.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass cohan_msgs::Predictions
  :super ros::object
  :slots (_predictions _logits _num_agents _history_length _window_length _max_agents _timestep ))

(defmethod cohan_msgs::Predictions
  (:init
   (&key
    ((:predictions __predictions) (instance std_msgs::Float32MultiArray :init))
    ((:logits __logits) (instance std_msgs::Float32MultiArray :init))
    ((:num_agents __num_agents) (instance std_msgs::Int32 :init))
    ((:history_length __history_length) (instance std_msgs::Int32 :init))
    ((:window_length __window_length) (instance std_msgs::Int32 :init))
    ((:max_agents __max_agents) (instance std_msgs::Int32 :init))
    ((:timestep __timestep) (instance std_msgs::Float32 :init))
    )
   (send-super :init)
   (setq _predictions __predictions)
   (setq _logits __logits)
   (setq _num_agents __num_agents)
   (setq _history_length __history_length)
   (setq _window_length __window_length)
   (setq _max_agents __max_agents)
   (setq _timestep __timestep)
   self)
  (:predictions
   (&rest __predictions)
   (if (keywordp (car __predictions))
       (send* _predictions __predictions)
     (progn
       (if __predictions (setq _predictions (car __predictions)))
       _predictions)))
  (:logits
   (&rest __logits)
   (if (keywordp (car __logits))
       (send* _logits __logits)
     (progn
       (if __logits (setq _logits (car __logits)))
       _logits)))
  (:num_agents
   (&rest __num_agents)
   (if (keywordp (car __num_agents))
       (send* _num_agents __num_agents)
     (progn
       (if __num_agents (setq _num_agents (car __num_agents)))
       _num_agents)))
  (:history_length
   (&rest __history_length)
   (if (keywordp (car __history_length))
       (send* _history_length __history_length)
     (progn
       (if __history_length (setq _history_length (car __history_length)))
       _history_length)))
  (:window_length
   (&rest __window_length)
   (if (keywordp (car __window_length))
       (send* _window_length __window_length)
     (progn
       (if __window_length (setq _window_length (car __window_length)))
       _window_length)))
  (:max_agents
   (&rest __max_agents)
   (if (keywordp (car __max_agents))
       (send* _max_agents __max_agents)
     (progn
       (if __max_agents (setq _max_agents (car __max_agents)))
       _max_agents)))
  (:timestep
   (&rest __timestep)
   (if (keywordp (car __timestep))
       (send* _timestep __timestep)
     (progn
       (if __timestep (setq _timestep (car __timestep)))
       _timestep)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Float32MultiArray _predictions
    (send _predictions :serialization-length)
    ;; std_msgs/Float32MultiArray _logits
    (send _logits :serialization-length)
    ;; std_msgs/Int32 _num_agents
    (send _num_agents :serialization-length)
    ;; std_msgs/Int32 _history_length
    (send _history_length :serialization-length)
    ;; std_msgs/Int32 _window_length
    (send _window_length :serialization-length)
    ;; std_msgs/Int32 _max_agents
    (send _max_agents :serialization-length)
    ;; std_msgs/Float32 _timestep
    (send _timestep :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Float32MultiArray _predictions
       (send _predictions :serialize s)
     ;; std_msgs/Float32MultiArray _logits
       (send _logits :serialize s)
     ;; std_msgs/Int32 _num_agents
       (send _num_agents :serialize s)
     ;; std_msgs/Int32 _history_length
       (send _history_length :serialize s)
     ;; std_msgs/Int32 _window_length
       (send _window_length :serialize s)
     ;; std_msgs/Int32 _max_agents
       (send _max_agents :serialize s)
     ;; std_msgs/Float32 _timestep
       (send _timestep :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Float32MultiArray _predictions
     (send _predictions :deserialize buf ptr-) (incf ptr- (send _predictions :serialization-length))
   ;; std_msgs/Float32MultiArray _logits
     (send _logits :deserialize buf ptr-) (incf ptr- (send _logits :serialization-length))
   ;; std_msgs/Int32 _num_agents
     (send _num_agents :deserialize buf ptr-) (incf ptr- (send _num_agents :serialization-length))
   ;; std_msgs/Int32 _history_length
     (send _history_length :deserialize buf ptr-) (incf ptr- (send _history_length :serialization-length))
   ;; std_msgs/Int32 _window_length
     (send _window_length :deserialize buf ptr-) (incf ptr- (send _window_length :serialization-length))
   ;; std_msgs/Int32 _max_agents
     (send _max_agents :deserialize buf ptr-) (incf ptr- (send _max_agents :serialization-length))
   ;; std_msgs/Float32 _timestep
     (send _timestep :deserialize buf ptr-) (incf ptr- (send _timestep :serialization-length))
   ;;
   self)
  )

(setf (get cohan_msgs::Predictions :md5sum-) "89017311e456121f144e6ec3ffe1e699")
(setf (get cohan_msgs::Predictions :datatype-) "cohan_msgs/Predictions")
(setf (get cohan_msgs::Predictions :definition-)
      "std_msgs/Float32MultiArray predictions
std_msgs/Float32MultiArray logits
std_msgs/Int32 num_agents
std_msgs/Int32 history_length
std_msgs/Int32 window_length
std_msgs/Int32 max_agents
std_msgs/Float32 timestep
================================================================================
MSG: std_msgs/Float32MultiArray
# Please look at the MultiArrayLayout message definition for
# documentation on all multiarrays.

MultiArrayLayout  layout        # specification of data layout
float32[]         data          # array of data


================================================================================
MSG: std_msgs/MultiArrayLayout
# The multiarray declares a generic multi-dimensional array of a
# particular data type.  Dimensions are ordered from outer most
# to inner most.

MultiArrayDimension[] dim # Array of dimension properties
uint32 data_offset        # padding elements at front of data

# Accessors should ALWAYS be written in terms of dimension stride
# and specified outer-most dimension first.
# 
# multiarray(i,j,k) = data[data_offset + dim_stride[1]*i + dim_stride[2]*j + k]
#
# A standard, 3-channel 640x480 image with interleaved color channels
# would be specified as:
#
# dim[0].label  = \"height\"
# dim[0].size   = 480
# dim[0].stride = 3*640*480 = 921600  (note dim[0] stride is just size of image)
# dim[1].label  = \"width\"
# dim[1].size   = 640
# dim[1].stride = 3*640 = 1920
# dim[2].label  = \"channel\"
# dim[2].size   = 3
# dim[2].stride = 3
#
# multiarray(i,j,k) refers to the ith row, jth column, and kth channel.

================================================================================
MSG: std_msgs/MultiArrayDimension
string label   # label of given dimension
uint32 size    # size of given dimension (in type units)
uint32 stride  # stride of given dimension
================================================================================
MSG: std_msgs/Int32
int32 data
================================================================================
MSG: std_msgs/Float32
float32 data
")



(provide :cohan_msgs/Predictions "89017311e456121f144e6ec3ffe1e699")


