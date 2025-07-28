// Auto-generated. Do not edit!

// (in-package cohan_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

let Trajectory = require('../msg/Trajectory.js');
let AgentTrajectoryArray = require('../msg/AgentTrajectoryArray.js');

//-----------------------------------------------------------

class GetTrajectoryRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.robot_goal = null;
      this.agents_ids = null;
    }
    else {
      if (initObj.hasOwnProperty('robot_goal')) {
        this.robot_goal = initObj.robot_goal
      }
      else {
        this.robot_goal = new geometry_msgs.msg.PoseStamped();
      }
      if (initObj.hasOwnProperty('agents_ids')) {
        this.agents_ids = initObj.agents_ids
      }
      else {
        this.agents_ids = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetTrajectoryRequest
    // Serialize message field [robot_goal]
    bufferOffset = geometry_msgs.msg.PoseStamped.serialize(obj.robot_goal, buffer, bufferOffset);
    // Serialize message field [agents_ids]
    bufferOffset = _arraySerializer.int64(obj.agents_ids, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetTrajectoryRequest
    let len;
    let data = new GetTrajectoryRequest(null);
    // Deserialize message field [robot_goal]
    data.robot_goal = geometry_msgs.msg.PoseStamped.deserialize(buffer, bufferOffset);
    // Deserialize message field [agents_ids]
    data.agents_ids = _arrayDeserializer.int64(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += geometry_msgs.msg.PoseStamped.getMessageSize(object.robot_goal);
    length += 8 * object.agents_ids.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'cohan_msgs/GetTrajectoryRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '346b7293cabc7e2ae4cd242f4f13eff3';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    geometry_msgs/PoseStamped       robot_goal
    int64[]                         agents_ids
    
    ================================================================================
    MSG: geometry_msgs/PoseStamped
    # A Pose with reference coordinate frame and timestamp
    Header header
    Pose pose
    
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
    MSG: geometry_msgs/Pose
    # A representation of pose in free space, composed of position and orientation. 
    Point position
    Quaternion orientation
    
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
    ================================================================================
    MSG: geometry_msgs/Quaternion
    # This represents an orientation in free space in quaternion form.
    
    float64 x
    float64 y
    float64 z
    float64 w
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetTrajectoryRequest(null);
    if (msg.robot_goal !== undefined) {
      resolved.robot_goal = geometry_msgs.msg.PoseStamped.Resolve(msg.robot_goal)
    }
    else {
      resolved.robot_goal = new geometry_msgs.msg.PoseStamped()
    }

    if (msg.agents_ids !== undefined) {
      resolved.agents_ids = msg.agents_ids;
    }
    else {
      resolved.agents_ids = []
    }

    return resolved;
    }
};

class GetTrajectoryResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.success = null;
      this.message = null;
      this.cmd_vel = null;
      this.robot_trajectory = null;
      this.human_trajectories = null;
    }
    else {
      if (initObj.hasOwnProperty('success')) {
        this.success = initObj.success
      }
      else {
        this.success = false;
      }
      if (initObj.hasOwnProperty('message')) {
        this.message = initObj.message
      }
      else {
        this.message = '';
      }
      if (initObj.hasOwnProperty('cmd_vel')) {
        this.cmd_vel = initObj.cmd_vel
      }
      else {
        this.cmd_vel = new geometry_msgs.msg.Twist();
      }
      if (initObj.hasOwnProperty('robot_trajectory')) {
        this.robot_trajectory = initObj.robot_trajectory
      }
      else {
        this.robot_trajectory = new Trajectory();
      }
      if (initObj.hasOwnProperty('human_trajectories')) {
        this.human_trajectories = initObj.human_trajectories
      }
      else {
        this.human_trajectories = new AgentTrajectoryArray();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetTrajectoryResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    // Serialize message field [message]
    bufferOffset = _serializer.string(obj.message, buffer, bufferOffset);
    // Serialize message field [cmd_vel]
    bufferOffset = geometry_msgs.msg.Twist.serialize(obj.cmd_vel, buffer, bufferOffset);
    // Serialize message field [robot_trajectory]
    bufferOffset = Trajectory.serialize(obj.robot_trajectory, buffer, bufferOffset);
    // Serialize message field [human_trajectories]
    bufferOffset = AgentTrajectoryArray.serialize(obj.human_trajectories, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetTrajectoryResponse
    let len;
    let data = new GetTrajectoryResponse(null);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [message]
    data.message = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [cmd_vel]
    data.cmd_vel = geometry_msgs.msg.Twist.deserialize(buffer, bufferOffset);
    // Deserialize message field [robot_trajectory]
    data.robot_trajectory = Trajectory.deserialize(buffer, bufferOffset);
    // Deserialize message field [human_trajectories]
    data.human_trajectories = AgentTrajectoryArray.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.message);
    length += Trajectory.getMessageSize(object.robot_trajectory);
    length += AgentTrajectoryArray.getMessageSize(object.human_trajectories);
    return length + 53;
  }

  static datatype() {
    // Returns string type for a service object
    return 'cohan_msgs/GetTrajectoryResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a256ad30d56f30dab854b1bd96de2ddf';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool                            success
    string                          message
    geometry_msgs/Twist             cmd_vel
    cohan_msgs/Trajectory           robot_trajectory
    cohan_msgs/AgentTrajectoryArray human_trajectories 
    
    ================================================================================
    MSG: geometry_msgs/Twist
    # This expresses velocity in free space broken into its linear and angular parts.
    Vector3 linear
    Vector3 angular
    
    ================================================================================
    MSG: geometry_msgs/Vector3
    # This represents a vector in free space. 
    # It is only meant to represent a direction. Therefore, it does not
    # make sense to apply a translation to it (e.g., when applying a 
    # generic rigid transformation to a Vector3, tf2 will only apply the
    # rotation). If you want your data to be translatable too, use the
    # geometry_msgs/Point message instead.
    
    float64 x
    float64 y
    float64 z
    ================================================================================
    MSG: cohan_msgs/Trajectory
    cohan_msgs/TrajectoryPoint[]     points
    
    ================================================================================
    MSG: cohan_msgs/TrajectoryPoint
    geometry_msgs/Pose          pose
    geometry_msgs/Twist         velocity
    duration                    time_from_start
    ================================================================================
    MSG: geometry_msgs/Pose
    # A representation of pose in free space, composed of position and orientation. 
    Point position
    Quaternion orientation
    
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
    ================================================================================
    MSG: geometry_msgs/Quaternion
    # This represents an orientation in free space in quaternion form.
    
    float64 x
    float64 y
    float64 z
    float64 w
    
    ================================================================================
    MSG: cohan_msgs/AgentTrajectoryArray
    cohan_msgs/AgentTrajectory[] trajectories
    
    ================================================================================
    MSG: cohan_msgs/AgentTrajectory
    uint64                  id
    int8                    type
    cohan_msgs/Trajectory   trajectory
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetTrajectoryResponse(null);
    if (msg.success !== undefined) {
      resolved.success = msg.success;
    }
    else {
      resolved.success = false
    }

    if (msg.message !== undefined) {
      resolved.message = msg.message;
    }
    else {
      resolved.message = ''
    }

    if (msg.cmd_vel !== undefined) {
      resolved.cmd_vel = geometry_msgs.msg.Twist.Resolve(msg.cmd_vel)
    }
    else {
      resolved.cmd_vel = new geometry_msgs.msg.Twist()
    }

    if (msg.robot_trajectory !== undefined) {
      resolved.robot_trajectory = Trajectory.Resolve(msg.robot_trajectory)
    }
    else {
      resolved.robot_trajectory = new Trajectory()
    }

    if (msg.human_trajectories !== undefined) {
      resolved.human_trajectories = AgentTrajectoryArray.Resolve(msg.human_trajectories)
    }
    else {
      resolved.human_trajectories = new AgentTrajectoryArray()
    }

    return resolved;
    }
};

module.exports = {
  Request: GetTrajectoryRequest,
  Response: GetTrajectoryResponse,
  md5sum() { return 'b06ef2124717e19c8dcfad526f6c1f42'; },
  datatype() { return 'cohan_msgs/GetTrajectory'; }
};
