# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from riki_msgs/Imu.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import geometry_msgs.msg

class Imu(genpy.Message):
  _md5sum = "275110405f08e1b7c0c0f1aba3e19c67"
  _type = "riki_msgs/Imu"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """geometry_msgs/Vector3 linear_acceleration
geometry_msgs/Vector3 angular_velocity
geometry_msgs/Vector3 magnetic_field
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
float64 z"""
  __slots__ = ['linear_acceleration','angular_velocity','magnetic_field']
  _slot_types = ['geometry_msgs/Vector3','geometry_msgs/Vector3','geometry_msgs/Vector3']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       linear_acceleration,angular_velocity,magnetic_field

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(Imu, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.linear_acceleration is None:
        self.linear_acceleration = geometry_msgs.msg.Vector3()
      if self.angular_velocity is None:
        self.angular_velocity = geometry_msgs.msg.Vector3()
      if self.magnetic_field is None:
        self.magnetic_field = geometry_msgs.msg.Vector3()
    else:
      self.linear_acceleration = geometry_msgs.msg.Vector3()
      self.angular_velocity = geometry_msgs.msg.Vector3()
      self.magnetic_field = geometry_msgs.msg.Vector3()

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      _x = self
      buff.write(_get_struct_9d().pack(_x.linear_acceleration.x, _x.linear_acceleration.y, _x.linear_acceleration.z, _x.angular_velocity.x, _x.angular_velocity.y, _x.angular_velocity.z, _x.magnetic_field.x, _x.magnetic_field.y, _x.magnetic_field.z))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      if self.linear_acceleration is None:
        self.linear_acceleration = geometry_msgs.msg.Vector3()
      if self.angular_velocity is None:
        self.angular_velocity = geometry_msgs.msg.Vector3()
      if self.magnetic_field is None:
        self.magnetic_field = geometry_msgs.msg.Vector3()
      end = 0
      _x = self
      start = end
      end += 72
      (_x.linear_acceleration.x, _x.linear_acceleration.y, _x.linear_acceleration.z, _x.angular_velocity.x, _x.angular_velocity.y, _x.angular_velocity.z, _x.magnetic_field.x, _x.magnetic_field.y, _x.magnetic_field.z,) = _get_struct_9d().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self
      buff.write(_get_struct_9d().pack(_x.linear_acceleration.x, _x.linear_acceleration.y, _x.linear_acceleration.z, _x.angular_velocity.x, _x.angular_velocity.y, _x.angular_velocity.z, _x.magnetic_field.x, _x.magnetic_field.y, _x.magnetic_field.z))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      if self.linear_acceleration is None:
        self.linear_acceleration = geometry_msgs.msg.Vector3()
      if self.angular_velocity is None:
        self.angular_velocity = geometry_msgs.msg.Vector3()
      if self.magnetic_field is None:
        self.magnetic_field = geometry_msgs.msg.Vector3()
      end = 0
      _x = self
      start = end
      end += 72
      (_x.linear_acceleration.x, _x.linear_acceleration.y, _x.linear_acceleration.z, _x.angular_velocity.x, _x.angular_velocity.y, _x.angular_velocity.z, _x.magnetic_field.x, _x.magnetic_field.y, _x.magnetic_field.z,) = _get_struct_9d().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_9d = None
def _get_struct_9d():
    global _struct_9d
    if _struct_9d is None:
        _struct_9d = struct.Struct("<9d")
    return _struct_9d
