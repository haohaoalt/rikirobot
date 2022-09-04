## *********************************************************
##
## File autogenerated for the opencv_apps package
## by the dynamic_reconfigure package.
## Please do not edit.
##
## ********************************************************/

from dynamic_reconfigure.encoding import extract_params

inf = float('inf')

config_description = {'upper': 'DEFAULT', 'lower': 'groups', 'srcline': 245, 'name': 'Default', 'parent': 0, 'srcfile': '/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'cstate': 'true', 'parentname': 'Default', 'class': 'DEFAULT', 'field': 'default', 'state': True, 'parentclass': '', 'groups': [], 'parameters': [{'srcline': 290, 'description': 'Indicates that the camera_info topic should be subscribed to to get the default input_frame_id. Otherwise the frame from the image message will be used.', 'max': True, 'cconsttype': 'const bool', 'ctype': 'bool', 'srcfile': '/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'use_camera_info', 'edit_method': '', 'default': False, 'level': 0, 'min': False, 'type': 'bool'}, {'srcline': 290, 'description': 'Apply otsu threshold', 'max': True, 'cconsttype': 'const bool', 'ctype': 'bool', 'srcfile': '/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'apply_otsu', 'edit_method': '', 'default': False, 'level': 0, 'min': False, 'type': 'bool'}, {'srcline': 290, 'description': 'Threshold Type', 'max': 4, 'cconsttype': 'const int', 'ctype': 'int', 'srcfile': '/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'threshold_type', 'edit_method': "{'enum_description': 'An enum for Threshold Types', 'enum': [{'srcline': 10, 'description': 'Binary', 'srcfile': '/home/haopi3/rikirobot/catkin_ws/src/opencv_apps/cfg/Threshold.cfg', 'cconsttype': 'const int', 'value': 0, 'ctype': 'int', 'type': 'int', 'name': 'Binary'}, {'srcline': 11, 'description': 'Binary Inverted', 'srcfile': '/home/haopi3/rikirobot/catkin_ws/src/opencv_apps/cfg/Threshold.cfg', 'cconsttype': 'const int', 'value': 1, 'ctype': 'int', 'type': 'int', 'name': 'Binary_Inverted'}, {'srcline': 12, 'description': 'Threshold Truncated', 'srcfile': '/home/haopi3/rikirobot/catkin_ws/src/opencv_apps/cfg/Threshold.cfg', 'cconsttype': 'const int', 'value': 2, 'ctype': 'int', 'type': 'int', 'name': 'Threshold_Truncated'}, {'srcline': 13, 'description': 'Threshold to Zero', 'srcfile': '/home/haopi3/rikirobot/catkin_ws/src/opencv_apps/cfg/Threshold.cfg', 'cconsttype': 'const int', 'value': 3, 'ctype': 'int', 'type': 'int', 'name': 'Threshold_To_Zero'}, {'srcline': 14, 'description': 'Threshold to zero inverted', 'srcfile': '/home/haopi3/rikirobot/catkin_ws/src/opencv_apps/cfg/Threshold.cfg', 'cconsttype': 'const int', 'value': 4, 'ctype': 'int', 'type': 'int', 'name': 'Threshold_To_Zero_Inverted'}]}", 'default': 0, 'level': 0, 'min': 0, 'type': 'int'}, {'srcline': 290, 'description': 'Threshold value', 'max': 255, 'cconsttype': 'const int', 'ctype': 'int', 'srcfile': '/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'threshold', 'edit_method': '', 'default': 150, 'level': 0, 'min': 0, 'type': 'int'}, {'srcline': 290, 'description': 'Max Binary value', 'max': 255, 'cconsttype': 'const int', 'ctype': 'int', 'srcfile': '/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'max_binary', 'edit_method': '', 'default': 255, 'level': 0, 'min': 0, 'type': 'int'}], 'type': '', 'id': 0}

min = {}
max = {}
defaults = {}
level = {}
type = {}
all_level = 0

#def extract_params(config):
#    params = []
#    params.extend(config['parameters'])
#    for group in config['groups']:
#        params.extend(extract_params(group))
#    return params

for param in extract_params(config_description):
    min[param['name']] = param['min']
    max[param['name']] = param['max']
    defaults[param['name']] = param['default']
    level[param['name']] = param['level']
    type[param['name']] = param['type']
    all_level = all_level | param['level']

Threshold_Binary = 0
Threshold_Binary_Inverted = 1
Threshold_Threshold_Truncated = 2
Threshold_Threshold_To_Zero = 3
Threshold_Threshold_To_Zero_Inverted = 4
