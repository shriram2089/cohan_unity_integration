// Auto-generated. Do not edit!

// (in-package cohan_gazebo.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class abortGoal {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.id = null;
      this.abort = null;
    }
    else {
      if (initObj.hasOwnProperty('id')) {
        this.id = initObj.id
      }
      else {
        this.id = 0;
      }
      if (initObj.hasOwnProperty('abort')) {
        this.abort = initObj.abort
      }
      else {
        this.abort = new std_msgs.msg.Bool();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type abortGoal
    // Serialize message field [id]
    bufferOffset = _serializer.int64(obj.id, buffer, bufferOffset);
    // Serialize message field [abort]
    bufferOffset = std_msgs.msg.Bool.serialize(obj.abort, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type abortGoal
    let len;
    let data = new abortGoal(null);
    // Deserialize message field [id]
    data.id = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [abort]
    data.abort = std_msgs.msg.Bool.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 9;
  }

  static datatype() {
    // Returns string type for a message object
    return 'cohan_gazebo/abortGoal';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ffb97e617eff82b1230d865ebbca3985';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int64         id
    std_msgs/Bool abort
    ================================================================================
    MSG: std_msgs/Bool
    bool data
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new abortGoal(null);
    if (msg.id !== undefined) {
      resolved.id = msg.id;
    }
    else {
      resolved.id = 0
    }

    if (msg.abort !== undefined) {
      resolved.abort = std_msgs.msg.Bool.Resolve(msg.abort)
    }
    else {
      resolved.abort = new std_msgs.msg.Bool()
    }

    return resolved;
    }
};

module.exports = abortGoal;
