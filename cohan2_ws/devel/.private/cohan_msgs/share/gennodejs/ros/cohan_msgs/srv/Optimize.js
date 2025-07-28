// Auto-generated. Do not edit!

// (in-package cohan_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let AgentPathArray = require('../msg/AgentPathArray.js');
let nav_msgs = _finder('nav_msgs');

//-----------------------------------------------------------

let Trajectory = require('../msg/Trajectory.js');
let AgentTrajectoryArray = require('../msg/AgentTrajectoryArray.js');
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class OptimizeRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.robot_plan = null;
      this.agent_plan_array = null;
      this.agents_ids = null;
    }
    else {
      if (initObj.hasOwnProperty('robot_plan')) {
        this.robot_plan = initObj.robot_plan
      }
      else {
        this.robot_plan = new nav_msgs.msg.Path();
      }
      if (initObj.hasOwnProperty('agent_plan_array')) {
        this.agent_plan_array = initObj.agent_plan_array
      }
      else {
        this.agent_plan_array = new AgentPathArray();
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
    // Serializes a message object of type OptimizeRequest
    // Serialize message field [robot_plan]
    bufferOffset = nav_msgs.msg.Path.serialize(obj.robot_plan, buffer, bufferOffset);
    // Serialize message field [agent_plan_array]
    bufferOffset = AgentPathArray.serialize(obj.agent_plan_array, buffer, bufferOffset);
    // Serialize message field [agents_ids]
    bufferOffset = _arraySerializer.int64(obj.agents_ids, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type OptimizeRequest
    let len;
    let data = new OptimizeRequest(null);
    // Deserialize message field [robot_plan]
    data.robot_plan = nav_msgs.msg.Path.deserialize(buffer, bufferOffset);
    // Deserialize message field [agent_plan_array]
    data.agent_plan_array = AgentPathArray.deserialize(buffer, bufferOffset);
    // Deserialize message field [agents_ids]
    data.agents_ids = _arrayDeserializer.int64(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += nav_msgs.msg.Path.getMessageSize(object.robot_plan);
    length += AgentPathArray.getMessageSize(object.agent_plan_array);
    length += 8 * object.agents_ids.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'cohan_msgs/OptimizeRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2679ebb88e07de77384996672574bc5a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Get optimized timed elastic bands for given agents and robot plans
    
    nav_msgs/Path                   robot_plan
    cohan_msgs/AgentPathArray       agent_plan_array
    int64[]                         agents_ids
    
    ================================================================================
    MSG: nav_msgs/Path
    #An array of poses that represents a Path for a robot to follow
    Header header
    geometry_msgs/PoseStamped[] poses
    
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
    MSG: geometry_msgs/PoseStamped
    # A Pose with reference coordinate frame and timestamp
    Header header
    Pose pose
    
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
    MSG: cohan_msgs/AgentPathArray
    std_msgs/Header         header
    cohan_msgs/AgentPath[]   paths
    
    ================================================================================
    MSG: cohan_msgs/AgentPath
    std_msgs/Header  header
    uint64           id
    nav_msgs/Path    path
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new OptimizeRequest(null);
    if (msg.robot_plan !== undefined) {
      resolved.robot_plan = nav_msgs.msg.Path.Resolve(msg.robot_plan)
    }
    else {
      resolved.robot_plan = new nav_msgs.msg.Path()
    }

    if (msg.agent_plan_array !== undefined) {
      resolved.agent_plan_array = AgentPathArray.Resolve(msg.agent_plan_array)
    }
    else {
      resolved.agent_plan_array = new AgentPathArray()
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

class OptimizeResponse {
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
    // Serializes a message object of type OptimizeResponse
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
    //deserializes a message object of type OptimizeResponse
    let len;
    let data = new OptimizeResponse(null);
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
    return 'cohan_msgs/OptimizeResponse';
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
    const resolved = new OptimizeResponse(null);
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
  Request: OptimizeRequest,
  Response: OptimizeResponse,
  md5sum() { return '268314f168a8e54386e219ff71892d27'; },
  datatype() { return 'cohan_msgs/Optimize'; }
};
