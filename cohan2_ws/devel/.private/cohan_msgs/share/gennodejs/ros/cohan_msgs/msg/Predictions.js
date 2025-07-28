// Auto-generated. Do not edit!

// (in-package cohan_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class Predictions {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.predictions = null;
      this.logits = null;
      this.num_agents = null;
      this.history_length = null;
      this.window_length = null;
      this.max_agents = null;
      this.timestep = null;
    }
    else {
      if (initObj.hasOwnProperty('predictions')) {
        this.predictions = initObj.predictions
      }
      else {
        this.predictions = new std_msgs.msg.Float32MultiArray();
      }
      if (initObj.hasOwnProperty('logits')) {
        this.logits = initObj.logits
      }
      else {
        this.logits = new std_msgs.msg.Float32MultiArray();
      }
      if (initObj.hasOwnProperty('num_agents')) {
        this.num_agents = initObj.num_agents
      }
      else {
        this.num_agents = new std_msgs.msg.Int32();
      }
      if (initObj.hasOwnProperty('history_length')) {
        this.history_length = initObj.history_length
      }
      else {
        this.history_length = new std_msgs.msg.Int32();
      }
      if (initObj.hasOwnProperty('window_length')) {
        this.window_length = initObj.window_length
      }
      else {
        this.window_length = new std_msgs.msg.Int32();
      }
      if (initObj.hasOwnProperty('max_agents')) {
        this.max_agents = initObj.max_agents
      }
      else {
        this.max_agents = new std_msgs.msg.Int32();
      }
      if (initObj.hasOwnProperty('timestep')) {
        this.timestep = initObj.timestep
      }
      else {
        this.timestep = new std_msgs.msg.Float32();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Predictions
    // Serialize message field [predictions]
    bufferOffset = std_msgs.msg.Float32MultiArray.serialize(obj.predictions, buffer, bufferOffset);
    // Serialize message field [logits]
    bufferOffset = std_msgs.msg.Float32MultiArray.serialize(obj.logits, buffer, bufferOffset);
    // Serialize message field [num_agents]
    bufferOffset = std_msgs.msg.Int32.serialize(obj.num_agents, buffer, bufferOffset);
    // Serialize message field [history_length]
    bufferOffset = std_msgs.msg.Int32.serialize(obj.history_length, buffer, bufferOffset);
    // Serialize message field [window_length]
    bufferOffset = std_msgs.msg.Int32.serialize(obj.window_length, buffer, bufferOffset);
    // Serialize message field [max_agents]
    bufferOffset = std_msgs.msg.Int32.serialize(obj.max_agents, buffer, bufferOffset);
    // Serialize message field [timestep]
    bufferOffset = std_msgs.msg.Float32.serialize(obj.timestep, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Predictions
    let len;
    let data = new Predictions(null);
    // Deserialize message field [predictions]
    data.predictions = std_msgs.msg.Float32MultiArray.deserialize(buffer, bufferOffset);
    // Deserialize message field [logits]
    data.logits = std_msgs.msg.Float32MultiArray.deserialize(buffer, bufferOffset);
    // Deserialize message field [num_agents]
    data.num_agents = std_msgs.msg.Int32.deserialize(buffer, bufferOffset);
    // Deserialize message field [history_length]
    data.history_length = std_msgs.msg.Int32.deserialize(buffer, bufferOffset);
    // Deserialize message field [window_length]
    data.window_length = std_msgs.msg.Int32.deserialize(buffer, bufferOffset);
    // Deserialize message field [max_agents]
    data.max_agents = std_msgs.msg.Int32.deserialize(buffer, bufferOffset);
    // Deserialize message field [timestep]
    data.timestep = std_msgs.msg.Float32.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Float32MultiArray.getMessageSize(object.predictions);
    length += std_msgs.msg.Float32MultiArray.getMessageSize(object.logits);
    return length + 20;
  }

  static datatype() {
    // Returns string type for a message object
    return 'cohan_msgs/Predictions';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '89017311e456121f144e6ec3ffe1e699';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Float32MultiArray predictions
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
    # dim[0].label  = "height"
    # dim[0].size   = 480
    # dim[0].stride = 3*640*480 = 921600  (note dim[0] stride is just size of image)
    # dim[1].label  = "width"
    # dim[1].size   = 640
    # dim[1].stride = 3*640 = 1920
    # dim[2].label  = "channel"
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
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Predictions(null);
    if (msg.predictions !== undefined) {
      resolved.predictions = std_msgs.msg.Float32MultiArray.Resolve(msg.predictions)
    }
    else {
      resolved.predictions = new std_msgs.msg.Float32MultiArray()
    }

    if (msg.logits !== undefined) {
      resolved.logits = std_msgs.msg.Float32MultiArray.Resolve(msg.logits)
    }
    else {
      resolved.logits = new std_msgs.msg.Float32MultiArray()
    }

    if (msg.num_agents !== undefined) {
      resolved.num_agents = std_msgs.msg.Int32.Resolve(msg.num_agents)
    }
    else {
      resolved.num_agents = new std_msgs.msg.Int32()
    }

    if (msg.history_length !== undefined) {
      resolved.history_length = std_msgs.msg.Int32.Resolve(msg.history_length)
    }
    else {
      resolved.history_length = new std_msgs.msg.Int32()
    }

    if (msg.window_length !== undefined) {
      resolved.window_length = std_msgs.msg.Int32.Resolve(msg.window_length)
    }
    else {
      resolved.window_length = new std_msgs.msg.Int32()
    }

    if (msg.max_agents !== undefined) {
      resolved.max_agents = std_msgs.msg.Int32.Resolve(msg.max_agents)
    }
    else {
      resolved.max_agents = new std_msgs.msg.Int32()
    }

    if (msg.timestep !== undefined) {
      resolved.timestep = std_msgs.msg.Float32.Resolve(msg.timestep)
    }
    else {
      resolved.timestep = new std_msgs.msg.Float32()
    }

    return resolved;
    }
};

module.exports = Predictions;
