// Auto-generated. Do not edit!

// (in-package agent_path_prediction.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let HumanInfo = require('./HumanInfo.js');
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class AgentsInfo {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.humans = null;
      this.visible = null;
      this.still = null;
      this.moving = null;
      this.robot_pose = null;
    }
    else {
      if (initObj.hasOwnProperty('humans')) {
        this.humans = initObj.humans
      }
      else {
        this.humans = [];
      }
      if (initObj.hasOwnProperty('visible')) {
        this.visible = initObj.visible
      }
      else {
        this.visible = [];
      }
      if (initObj.hasOwnProperty('still')) {
        this.still = initObj.still
      }
      else {
        this.still = [];
      }
      if (initObj.hasOwnProperty('moving')) {
        this.moving = initObj.moving
      }
      else {
        this.moving = [];
      }
      if (initObj.hasOwnProperty('robot_pose')) {
        this.robot_pose = initObj.robot_pose
      }
      else {
        this.robot_pose = new geometry_msgs.msg.Pose2D();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type AgentsInfo
    // Serialize message field [humans]
    // Serialize the length for message field [humans]
    bufferOffset = _serializer.uint32(obj.humans.length, buffer, bufferOffset);
    obj.humans.forEach((val) => {
      bufferOffset = HumanInfo.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [visible]
    bufferOffset = _arraySerializer.int32(obj.visible, buffer, bufferOffset, null);
    // Serialize message field [still]
    bufferOffset = _arraySerializer.int32(obj.still, buffer, bufferOffset, null);
    // Serialize message field [moving]
    bufferOffset = _arraySerializer.int32(obj.moving, buffer, bufferOffset, null);
    // Serialize message field [robot_pose]
    bufferOffset = geometry_msgs.msg.Pose2D.serialize(obj.robot_pose, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type AgentsInfo
    let len;
    let data = new AgentsInfo(null);
    // Deserialize message field [humans]
    // Deserialize array length for message field [humans]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.humans = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.humans[i] = HumanInfo.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [visible]
    data.visible = _arrayDeserializer.int32(buffer, bufferOffset, null)
    // Deserialize message field [still]
    data.still = _arrayDeserializer.int32(buffer, bufferOffset, null)
    // Deserialize message field [moving]
    data.moving = _arrayDeserializer.int32(buffer, bufferOffset, null)
    // Deserialize message field [robot_pose]
    data.robot_pose = geometry_msgs.msg.Pose2D.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.humans.forEach((val) => {
      length += HumanInfo.getMessageSize(val);
    });
    length += 4 * object.visible.length;
    length += 4 * object.still.length;
    length += 4 * object.moving.length;
    return length + 40;
  }

  static datatype() {
    // Returns string type for a message object
    return 'agent_path_prediction/AgentsInfo';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'baf312eee874059dba1071b6b4d6d8e3';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    HumanInfo[]           humans
    int32[]               visible
    int32[]               still
    int32[]               moving
    geometry_msgs/Pose2D  robot_pose
    # geometry_msgs/Twist   robot_vel                    
    
    
    ================================================================================
    MSG: agent_path_prediction/HumanInfo
    int32   id
    int8    state
    float32 dist
    string  name
    # geometry_msgs/Twist vel                    
    
    ================================================================================
    MSG: geometry_msgs/Pose2D
    # Deprecated
    # Please use the full 3D pose.
    
    # In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.
    
    # If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.
    
    
    # This expresses a position and orientation on a 2D manifold.
    
    float64 x
    float64 y
    float64 theta
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new AgentsInfo(null);
    if (msg.humans !== undefined) {
      resolved.humans = new Array(msg.humans.length);
      for (let i = 0; i < resolved.humans.length; ++i) {
        resolved.humans[i] = HumanInfo.Resolve(msg.humans[i]);
      }
    }
    else {
      resolved.humans = []
    }

    if (msg.visible !== undefined) {
      resolved.visible = msg.visible;
    }
    else {
      resolved.visible = []
    }

    if (msg.still !== undefined) {
      resolved.still = msg.still;
    }
    else {
      resolved.still = []
    }

    if (msg.moving !== undefined) {
      resolved.moving = msg.moving;
    }
    else {
      resolved.moving = []
    }

    if (msg.robot_pose !== undefined) {
      resolved.robot_pose = geometry_msgs.msg.Pose2D.Resolve(msg.robot_pose)
    }
    else {
      resolved.robot_pose = new geometry_msgs.msg.Pose2D()
    }

    return resolved;
    }
};

module.exports = AgentsInfo;
