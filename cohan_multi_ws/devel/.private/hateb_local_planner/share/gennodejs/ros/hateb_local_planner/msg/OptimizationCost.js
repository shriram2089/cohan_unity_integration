// Auto-generated. Do not edit!

// (in-package hateb_local_planner.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class OptimizationCost {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.type = null;
      this.cost = null;
      this.costs_arr = null;
    }
    else {
      if (initObj.hasOwnProperty('type')) {
        this.type = initObj.type
      }
      else {
        this.type = 0;
      }
      if (initObj.hasOwnProperty('cost')) {
        this.cost = initObj.cost
      }
      else {
        this.cost = 0.0;
      }
      if (initObj.hasOwnProperty('costs_arr')) {
        this.costs_arr = initObj.costs_arr
      }
      else {
        this.costs_arr = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type OptimizationCost
    // Serialize message field [type]
    bufferOffset = _serializer.int8(obj.type, buffer, bufferOffset);
    // Serialize message field [cost]
    bufferOffset = _serializer.float64(obj.cost, buffer, bufferOffset);
    // Serialize message field [costs_arr]
    bufferOffset = _arraySerializer.float64(obj.costs_arr, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type OptimizationCost
    let len;
    let data = new OptimizationCost(null);
    // Deserialize message field [type]
    data.type = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [cost]
    data.cost = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [costs_arr]
    data.costs_arr = _arrayDeserializer.float64(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 8 * object.costs_arr.length;
    return length + 13;
  }

  static datatype() {
    // Returns string type for a message object
    return 'hateb_local_planner/OptimizationCost';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '7d4c381ecf0f9fe4378c92efd02e5a2d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    int8 AGENT_ROBOT_TTC=12
    int8 AGENT_ROBOT_REL_VEL=13
    int8 AGENT_ROBOT_MIN_DIST=14
    int8 AGENT_ROBOT_VISIBILITY=15
    int8 AGENT_ROBOT_TTClosest=16
    int8 AGENT_ROBOT_TTCplus=17
    
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
    const resolved = new OptimizationCost(null);
    if (msg.type !== undefined) {
      resolved.type = msg.type;
    }
    else {
      resolved.type = 0
    }

    if (msg.cost !== undefined) {
      resolved.cost = msg.cost;
    }
    else {
      resolved.cost = 0.0
    }

    if (msg.costs_arr !== undefined) {
      resolved.costs_arr = msg.costs_arr;
    }
    else {
      resolved.costs_arr = []
    }

    return resolved;
    }
};

// Constants for message
OptimizationCost.Constants = {
  TIME_OPTIMALITY: 0,
  KINEMATIC_DD: 1,
  KINEMATIC_CL: 2,
  ROBOT_VEL: 3,
  AGENT_VEL: 4,
  ROBOT_ACC: 5,
  AGENT_ACC: 6,
  OBSTACLE: 7,
  DYNAMIC_OBSTACLE: 8,
  VIA_POINT: 9,
  AGENT_ROBOT_SAFETY: 10,
  AGENT_AGENT_SAFETY: 11,
  AGENT_ROBOT_TTC: 12,
  AGENT_ROBOT_REL_VEL: 13,
  AGENT_ROBOT_MIN_DIST: 14,
  AGENT_ROBOT_VISIBILITY: 15,
  AGENT_ROBOT_TTCLOSEST: 16,
  AGENT_ROBOT_TTCPLUS: 17,
}

module.exports = OptimizationCost;
