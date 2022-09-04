// Auto-generated. Do not edit!

// (in-package frontier_exploration.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------


//-----------------------------------------------------------

class UpdateBoundaryPolygonRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.explore_boundary = null;
    }
    else {
      if (initObj.hasOwnProperty('explore_boundary')) {
        this.explore_boundary = initObj.explore_boundary
      }
      else {
        this.explore_boundary = new geometry_msgs.msg.PolygonStamped();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type UpdateBoundaryPolygonRequest
    // Serialize message field [explore_boundary]
    bufferOffset = geometry_msgs.msg.PolygonStamped.serialize(obj.explore_boundary, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type UpdateBoundaryPolygonRequest
    let len;
    let data = new UpdateBoundaryPolygonRequest(null);
    // Deserialize message field [explore_boundary]
    data.explore_boundary = geometry_msgs.msg.PolygonStamped.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += geometry_msgs.msg.PolygonStamped.getMessageSize(object.explore_boundary);
    return length;
  }

  static datatype() {
    // Returns string type for a service object
    return 'frontier_exploration/UpdateBoundaryPolygonRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'fcd73e86a17cffec115813ce5a863c84';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    geometry_msgs/PolygonStamped explore_boundary
    
    ================================================================================
    MSG: geometry_msgs/PolygonStamped
    # This represents a Polygon with reference coordinate frame and timestamp
    Header header
    Polygon polygon
    
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
    # 0: no frame
    # 1: global frame
    string frame_id
    
    ================================================================================
    MSG: geometry_msgs/Polygon
    #A specification of a polygon where the first and last points are assumed to be connected
    Point32[] points
    
    ================================================================================
    MSG: geometry_msgs/Point32
    # This contains the position of a point in free space(with 32 bits of precision).
    # It is recommeded to use Point wherever possible instead of Point32.  
    # 
    # This recommendation is to promote interoperability.  
    #
    # This message is designed to take up less space when sending
    # lots of points at once, as in the case of a PointCloud.  
    
    float32 x
    float32 y
    float32 z
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new UpdateBoundaryPolygonRequest(null);
    if (msg.explore_boundary !== undefined) {
      resolved.explore_boundary = geometry_msgs.msg.PolygonStamped.Resolve(msg.explore_boundary)
    }
    else {
      resolved.explore_boundary = new geometry_msgs.msg.PolygonStamped()
    }

    return resolved;
    }
};

class UpdateBoundaryPolygonResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type UpdateBoundaryPolygonResponse
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type UpdateBoundaryPolygonResponse
    let len;
    let data = new UpdateBoundaryPolygonResponse(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'frontier_exploration/UpdateBoundaryPolygonResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd41d8cd98f00b204e9800998ecf8427e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new UpdateBoundaryPolygonResponse(null);
    return resolved;
    }
};

module.exports = {
  Request: UpdateBoundaryPolygonRequest,
  Response: UpdateBoundaryPolygonResponse,
  md5sum() { return 'fcd73e86a17cffec115813ce5a863c84'; },
  datatype() { return 'frontier_exploration/UpdateBoundaryPolygon'; }
};
