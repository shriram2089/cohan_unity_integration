; Auto-generated. Do not edit!


(cl:in-package cohan_msgs-msg)


;//! \htmlinclude Predictions.msg.html

(cl:defclass <Predictions> (roslisp-msg-protocol:ros-message)
  ((predictions
    :reader predictions
    :initarg :predictions
    :type std_msgs-msg:Float32MultiArray
    :initform (cl:make-instance 'std_msgs-msg:Float32MultiArray))
   (logits
    :reader logits
    :initarg :logits
    :type std_msgs-msg:Float32MultiArray
    :initform (cl:make-instance 'std_msgs-msg:Float32MultiArray))
   (num_agents
    :reader num_agents
    :initarg :num_agents
    :type std_msgs-msg:Int32
    :initform (cl:make-instance 'std_msgs-msg:Int32))
   (history_length
    :reader history_length
    :initarg :history_length
    :type std_msgs-msg:Int32
    :initform (cl:make-instance 'std_msgs-msg:Int32))
   (window_length
    :reader window_length
    :initarg :window_length
    :type std_msgs-msg:Int32
    :initform (cl:make-instance 'std_msgs-msg:Int32))
   (max_agents
    :reader max_agents
    :initarg :max_agents
    :type std_msgs-msg:Int32
    :initform (cl:make-instance 'std_msgs-msg:Int32))
   (timestep
    :reader timestep
    :initarg :timestep
    :type std_msgs-msg:Float32
    :initform (cl:make-instance 'std_msgs-msg:Float32)))
)

(cl:defclass Predictions (<Predictions>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Predictions>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Predictions)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cohan_msgs-msg:<Predictions> is deprecated: use cohan_msgs-msg:Predictions instead.")))

(cl:ensure-generic-function 'predictions-val :lambda-list '(m))
(cl:defmethod predictions-val ((m <Predictions>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cohan_msgs-msg:predictions-val is deprecated.  Use cohan_msgs-msg:predictions instead.")
  (predictions m))

(cl:ensure-generic-function 'logits-val :lambda-list '(m))
(cl:defmethod logits-val ((m <Predictions>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cohan_msgs-msg:logits-val is deprecated.  Use cohan_msgs-msg:logits instead.")
  (logits m))

(cl:ensure-generic-function 'num_agents-val :lambda-list '(m))
(cl:defmethod num_agents-val ((m <Predictions>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cohan_msgs-msg:num_agents-val is deprecated.  Use cohan_msgs-msg:num_agents instead.")
  (num_agents m))

(cl:ensure-generic-function 'history_length-val :lambda-list '(m))
(cl:defmethod history_length-val ((m <Predictions>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cohan_msgs-msg:history_length-val is deprecated.  Use cohan_msgs-msg:history_length instead.")
  (history_length m))

(cl:ensure-generic-function 'window_length-val :lambda-list '(m))
(cl:defmethod window_length-val ((m <Predictions>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cohan_msgs-msg:window_length-val is deprecated.  Use cohan_msgs-msg:window_length instead.")
  (window_length m))

(cl:ensure-generic-function 'max_agents-val :lambda-list '(m))
(cl:defmethod max_agents-val ((m <Predictions>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cohan_msgs-msg:max_agents-val is deprecated.  Use cohan_msgs-msg:max_agents instead.")
  (max_agents m))

(cl:ensure-generic-function 'timestep-val :lambda-list '(m))
(cl:defmethod timestep-val ((m <Predictions>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cohan_msgs-msg:timestep-val is deprecated.  Use cohan_msgs-msg:timestep instead.")
  (timestep m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Predictions>) ostream)
  "Serializes a message object of type '<Predictions>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'predictions) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'logits) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'num_agents) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'history_length) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'window_length) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'max_agents) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'timestep) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Predictions>) istream)
  "Deserializes a message object of type '<Predictions>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'predictions) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'logits) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'num_agents) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'history_length) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'window_length) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'max_agents) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'timestep) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Predictions>)))
  "Returns string type for a message object of type '<Predictions>"
  "cohan_msgs/Predictions")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Predictions)))
  "Returns string type for a message object of type 'Predictions"
  "cohan_msgs/Predictions")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Predictions>)))
  "Returns md5sum for a message object of type '<Predictions>"
  "89017311e456121f144e6ec3ffe1e699")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Predictions)))
  "Returns md5sum for a message object of type 'Predictions"
  "89017311e456121f144e6ec3ffe1e699")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Predictions>)))
  "Returns full string definition for message of type '<Predictions>"
  (cl:format cl:nil "std_msgs/Float32MultiArray predictions~%std_msgs/Float32MultiArray logits~%std_msgs/Int32 num_agents~%std_msgs/Int32 history_length~%std_msgs/Int32 window_length~%std_msgs/Int32 max_agents~%std_msgs/Float32 timestep~%================================================================================~%MSG: std_msgs/Float32MultiArray~%# Please look at the MultiArrayLayout message definition for~%# documentation on all multiarrays.~%~%MultiArrayLayout  layout        # specification of data layout~%float32[]         data          # array of data~%~%~%================================================================================~%MSG: std_msgs/MultiArrayLayout~%# The multiarray declares a generic multi-dimensional array of a~%# particular data type.  Dimensions are ordered from outer most~%# to inner most.~%~%MultiArrayDimension[] dim # Array of dimension properties~%uint32 data_offset        # padding elements at front of data~%~%# Accessors should ALWAYS be written in terms of dimension stride~%# and specified outer-most dimension first.~%# ~%# multiarray(i,j,k) = data[data_offset + dim_stride[1]*i + dim_stride[2]*j + k]~%#~%# A standard, 3-channel 640x480 image with interleaved color channels~%# would be specified as:~%#~%# dim[0].label  = \"height\"~%# dim[0].size   = 480~%# dim[0].stride = 3*640*480 = 921600  (note dim[0] stride is just size of image)~%# dim[1].label  = \"width\"~%# dim[1].size   = 640~%# dim[1].stride = 3*640 = 1920~%# dim[2].label  = \"channel\"~%# dim[2].size   = 3~%# dim[2].stride = 3~%#~%# multiarray(i,j,k) refers to the ith row, jth column, and kth channel.~%~%================================================================================~%MSG: std_msgs/MultiArrayDimension~%string label   # label of given dimension~%uint32 size    # size of given dimension (in type units)~%uint32 stride  # stride of given dimension~%================================================================================~%MSG: std_msgs/Int32~%int32 data~%================================================================================~%MSG: std_msgs/Float32~%float32 data~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Predictions)))
  "Returns full string definition for message of type 'Predictions"
  (cl:format cl:nil "std_msgs/Float32MultiArray predictions~%std_msgs/Float32MultiArray logits~%std_msgs/Int32 num_agents~%std_msgs/Int32 history_length~%std_msgs/Int32 window_length~%std_msgs/Int32 max_agents~%std_msgs/Float32 timestep~%================================================================================~%MSG: std_msgs/Float32MultiArray~%# Please look at the MultiArrayLayout message definition for~%# documentation on all multiarrays.~%~%MultiArrayLayout  layout        # specification of data layout~%float32[]         data          # array of data~%~%~%================================================================================~%MSG: std_msgs/MultiArrayLayout~%# The multiarray declares a generic multi-dimensional array of a~%# particular data type.  Dimensions are ordered from outer most~%# to inner most.~%~%MultiArrayDimension[] dim # Array of dimension properties~%uint32 data_offset        # padding elements at front of data~%~%# Accessors should ALWAYS be written in terms of dimension stride~%# and specified outer-most dimension first.~%# ~%# multiarray(i,j,k) = data[data_offset + dim_stride[1]*i + dim_stride[2]*j + k]~%#~%# A standard, 3-channel 640x480 image with interleaved color channels~%# would be specified as:~%#~%# dim[0].label  = \"height\"~%# dim[0].size   = 480~%# dim[0].stride = 3*640*480 = 921600  (note dim[0] stride is just size of image)~%# dim[1].label  = \"width\"~%# dim[1].size   = 640~%# dim[1].stride = 3*640 = 1920~%# dim[2].label  = \"channel\"~%# dim[2].size   = 3~%# dim[2].stride = 3~%#~%# multiarray(i,j,k) refers to the ith row, jth column, and kth channel.~%~%================================================================================~%MSG: std_msgs/MultiArrayDimension~%string label   # label of given dimension~%uint32 size    # size of given dimension (in type units)~%uint32 stride  # stride of given dimension~%================================================================================~%MSG: std_msgs/Int32~%int32 data~%================================================================================~%MSG: std_msgs/Float32~%float32 data~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Predictions>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'predictions))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'logits))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'num_agents))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'history_length))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'window_length))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'max_agents))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'timestep))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Predictions>))
  "Converts a ROS message object to a list"
  (cl:list 'Predictions
    (cl:cons ':predictions (predictions msg))
    (cl:cons ':logits (logits msg))
    (cl:cons ':num_agents (num_agents msg))
    (cl:cons ':history_length (history_length msg))
    (cl:cons ':window_length (window_length msg))
    (cl:cons ':max_agents (max_agents msg))
    (cl:cons ':timestep (timestep msg))
))
