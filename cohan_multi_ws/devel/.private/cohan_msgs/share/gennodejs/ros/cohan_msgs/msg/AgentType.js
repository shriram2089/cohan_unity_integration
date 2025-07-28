// Auto-generated. Do not edit!

// (in-package cohan_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class AgentType {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type AgentType
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type AgentType
    let len;
    let data = new AgentType(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a message object
    return 'cohan_msgs/AgentType';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5beb948e85cadcdc28356d202c4aeecd';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # agent types
    int8 ROBOT=0
    int8 HUMAN=1
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new AgentType(null);
    return resolved;
    }
};

// Constants for message
AgentType.Constants = {
  ROBOT: 0,
  HUMAN: 1,
}

module.exports = AgentType;
