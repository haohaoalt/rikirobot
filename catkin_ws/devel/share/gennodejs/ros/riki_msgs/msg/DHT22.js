// Auto-generated. Do not edit!

// (in-package riki_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class DHT22 {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.Temperature = null;
      this.Humidity = null;
    }
    else {
      if (initObj.hasOwnProperty('Temperature')) {
        this.Temperature = initObj.Temperature
      }
      else {
        this.Temperature = 0.0;
      }
      if (initObj.hasOwnProperty('Humidity')) {
        this.Humidity = initObj.Humidity
      }
      else {
        this.Humidity = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type DHT22
    // Serialize message field [Temperature]
    bufferOffset = _serializer.float32(obj.Temperature, buffer, bufferOffset);
    // Serialize message field [Humidity]
    bufferOffset = _serializer.float32(obj.Humidity, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DHT22
    let len;
    let data = new DHT22(null);
    // Deserialize message field [Temperature]
    data.Temperature = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [Humidity]
    data.Humidity = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'riki_msgs/DHT22';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5444ed9cc78ceaace5058c55fe815905';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 Temperature
    float32 Humidity
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new DHT22(null);
    if (msg.Temperature !== undefined) {
      resolved.Temperature = msg.Temperature;
    }
    else {
      resolved.Temperature = 0.0
    }

    if (msg.Humidity !== undefined) {
      resolved.Humidity = msg.Humidity;
    }
    else {
      resolved.Humidity = 0.0
    }

    return resolved;
    }
};

module.exports = DHT22;
