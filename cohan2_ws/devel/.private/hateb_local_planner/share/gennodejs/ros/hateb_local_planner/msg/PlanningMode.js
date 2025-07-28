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

class PlanningMode {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.plan_mode = null;
      this.predict_mode = null;
      this.moving_humans = null;
      this.still_humans = null;
    }
    else {
      if (initObj.hasOwnProperty('plan_mode')) {
        this.plan_mode = initObj.plan_mode
      }
      else {
        this.plan_mode = 0;
      }
      if (initObj.hasOwnProperty('predict_mode')) {
        this.predict_mode = initObj.predict_mode
      }
      else {
        this.predict_mode = 0;
      }
      if (initObj.hasOwnProperty('moving_humans')) {
        this.moving_humans = initObj.moving_humans
      }
      else {
        this.moving_humans = [];
      }
      if (initObj.hasOwnProperty('still_humans')) {
        this.still_humans = initObj.still_humans
      }
      else {
        this.still_humans = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PlanningMode
    // Serialize message field [plan_mode]
    bufferOffset = _serializer.int8(obj.plan_mode, buffer, bufferOffset);
    // Serialize message field [predict_mode]
    bufferOffset = _serializer.int8(obj.predict_mode, buffer, bufferOffset);
    // Serialize message field [moving_humans]
    bufferOffset = _arraySerializer.int32(obj.moving_humans, buffer, bufferOffset, null);
    // Serialize message field [still_humans]
    bufferOffset = _arraySerializer.int32(obj.still_humans, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PlanningMode
    let len;
    let data = new PlanningMode(null);
    // Deserialize message field [plan_mode]
    data.plan_mode = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [predict_mode]
    data.predict_mode = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [moving_humans]
    data.moving_humans = _arrayDeserializer.int32(buffer, bufferOffset, null)
    // Deserialize message field [still_humans]
    data.still_humans = _arrayDeserializer.int32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.moving_humans.length;
    length += 4 * object.still_humans.length;
    return length + 10;
  }

  static datatype() {
    // Returns string type for a message object
    return 'hateb_local_planner/PlanningMode';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ee45c05d7fb63156ab0e68657c7bc8e3';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int8    plan_mode
    int8    predict_mode
    int32[] moving_humans
    int32[] still_humans
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PlanningMode(null);
    if (msg.plan_mode !== undefined) {
      resolved.plan_mode = msg.plan_mode;
    }
    else {
      resolved.plan_mode = 0
    }

    if (msg.predict_mode !== undefined) {
      resolved.predict_mode = msg.predict_mode;
    }
    else {
      resolved.predict_mode = 0
    }

    if (msg.moving_humans !== undefined) {
      resolved.moving_humans = msg.moving_humans;
    }
    else {
      resolved.moving_humans = []
    }

    if (msg.still_humans !== undefined) {
      resolved.still_humans = msg.still_humans;
    }
    else {
      resolved.still_humans = []
    }

    return resolved;
    }
};

module.exports = PlanningMode;
