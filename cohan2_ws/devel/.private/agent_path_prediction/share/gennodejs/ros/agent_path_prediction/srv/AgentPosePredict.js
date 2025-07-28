// Auto-generated. Do not edit!

// (in-package agent_path_prediction.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

let PredictedPoses = require('../msg/PredictedPoses.js');

//-----------------------------------------------------------

class AgentPosePredictRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.type = null;
      this.predict_times = null;
      this.ids = null;
    }
    else {
      if (initObj.hasOwnProperty('type')) {
        this.type = initObj.type
      }
      else {
        this.type = 0;
      }
      if (initObj.hasOwnProperty('predict_times')) {
        this.predict_times = initObj.predict_times
      }
      else {
        this.predict_times = [];
      }
      if (initObj.hasOwnProperty('ids')) {
        this.ids = initObj.ids
      }
      else {
        this.ids = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type AgentPosePredictRequest
    // Serialize message field [type]
    bufferOffset = _serializer.uint8(obj.type, buffer, bufferOffset);
    // Serialize message field [predict_times]
    bufferOffset = _arraySerializer.float64(obj.predict_times, buffer, bufferOffset, null);
    // Serialize message field [ids]
    bufferOffset = _arraySerializer.int64(obj.ids, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type AgentPosePredictRequest
    let len;
    let data = new AgentPosePredictRequest(null);
    // Deserialize message field [type]
    data.type = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [predict_times]
    data.predict_times = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [ids]
    data.ids = _arrayDeserializer.int64(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 8 * object.predict_times.length;
    length += 8 * object.ids.length;
    return length + 9;
  }

  static datatype() {
    // Returns string type for a service object
    return 'agent_path_prediction/AgentPosePredictRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '770992d52ec17eb262325de18b4c8f01';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # request constants
    uint8 VELOCITY_SCALE=0
    uint8 VELOCITY_OBSTACLE=1
    uint8 EXTERNAL=2
    uint8 BEHIND_ROBOT=3
    uint8 PREDICTED_GOAL=4
    # request fields
    uint8                                     type
    float64[]                                 predict_times
    int64[]                                   ids
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new AgentPosePredictRequest(null);
    if (msg.type !== undefined) {
      resolved.type = msg.type;
    }
    else {
      resolved.type = 0
    }

    if (msg.predict_times !== undefined) {
      resolved.predict_times = msg.predict_times;
    }
    else {
      resolved.predict_times = []
    }

    if (msg.ids !== undefined) {
      resolved.ids = msg.ids;
    }
    else {
      resolved.ids = []
    }

    return resolved;
    }
};

// Constants for message
AgentPosePredictRequest.Constants = {
  VELOCITY_SCALE: 0,
  VELOCITY_OBSTACLE: 1,
  EXTERNAL: 2,
  BEHIND_ROBOT: 3,
  PREDICTED_GOAL: 4,
}

class AgentPosePredictResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.predicted_agents_poses = null;
    }
    else {
      if (initObj.hasOwnProperty('predicted_agents_poses')) {
        this.predicted_agents_poses = initObj.predicted_agents_poses
      }
      else {
        this.predicted_agents_poses = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type AgentPosePredictResponse
    // Serialize message field [predicted_agents_poses]
    // Serialize the length for message field [predicted_agents_poses]
    bufferOffset = _serializer.uint32(obj.predicted_agents_poses.length, buffer, bufferOffset);
    obj.predicted_agents_poses.forEach((val) => {
      bufferOffset = PredictedPoses.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type AgentPosePredictResponse
    let len;
    let data = new AgentPosePredictResponse(null);
    // Deserialize message field [predicted_agents_poses]
    // Deserialize array length for message field [predicted_agents_poses]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.predicted_agents_poses = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.predicted_agents_poses[i] = PredictedPoses.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.predicted_agents_poses.forEach((val) => {
      length += PredictedPoses.getMessageSize(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'agent_path_prediction/AgentPosePredictResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a266c4f686b24c6e295a6d7d07ac0d53';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # response fields
    agent_path_prediction/PredictedPoses[]    predicted_agents_poses
    
    
    ================================================================================
    MSG: agent_path_prediction/PredictedPoses
    int32                                       id
    geometry_msgs/PoseWithCovarianceStamped[]   poses
    geometry_msgs/TwistStamped                  start_velocity
    
    ================================================================================
    MSG: geometry_msgs/PoseWithCovarianceStamped
    # This expresses an estimated pose with a reference coordinate frame and timestamp
    
    Header header
    PoseWithCovariance pose
    
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
    MSG: geometry_msgs/PoseWithCovariance
    # This represents a pose in free space with uncertainty.
    
    Pose pose
    
    # Row-major representation of the 6x6 covariance matrix
    # The orientation parameters use a fixed-axis representation.
    # In order, the parameters are:
    # (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)
    float64[36] covariance
    
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
    MSG: geometry_msgs/TwistStamped
    # A twist with reference coordinate frame and timestamp
    Header header
    Twist twist
    
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
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new AgentPosePredictResponse(null);
    if (msg.predicted_agents_poses !== undefined) {
      resolved.predicted_agents_poses = new Array(msg.predicted_agents_poses.length);
      for (let i = 0; i < resolved.predicted_agents_poses.length; ++i) {
        resolved.predicted_agents_poses[i] = PredictedPoses.Resolve(msg.predicted_agents_poses[i]);
      }
    }
    else {
      resolved.predicted_agents_poses = []
    }

    return resolved;
    }
};

module.exports = {
  Request: AgentPosePredictRequest,
  Response: AgentPosePredictResponse,
  md5sum() { return 'f2ab50e2ec6a7963ecccc52802378f03'; },
  datatype() { return 'agent_path_prediction/AgentPosePredict'; }
};
