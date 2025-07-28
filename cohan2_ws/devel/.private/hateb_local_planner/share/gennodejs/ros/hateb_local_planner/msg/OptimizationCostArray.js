// Auto-generated. Do not edit!

// (in-package hateb_local_planner.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let OptimizationCost = require('./OptimizationCost.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class OptimizationCostArray {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.costs = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('costs')) {
        this.costs = initObj.costs
      }
      else {
        this.costs = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type OptimizationCostArray
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [costs]
    // Serialize the length for message field [costs]
    bufferOffset = _serializer.uint32(obj.costs.length, buffer, bufferOffset);
    obj.costs.forEach((val) => {
      bufferOffset = OptimizationCost.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type OptimizationCostArray
    let len;
    let data = new OptimizationCostArray(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [costs]
    // Deserialize array length for message field [costs]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.costs = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.costs[i] = OptimizationCost.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    object.costs.forEach((val) => {
      length += OptimizationCost.getMessageSize(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'hateb_local_planner/OptimizationCostArray';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f4f6ed21c925a566cd764816f623c1cb';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header header
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new OptimizationCostArray(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.costs !== undefined) {
      resolved.costs = new Array(msg.costs.length);
      for (let i = 0; i < resolved.costs.length; ++i) {
        resolved.costs[i] = OptimizationCost.Resolve(msg.costs[i]);
      }
    }
    else {
      resolved.costs = []
    }

    return resolved;
    }
};

module.exports = OptimizationCostArray;
