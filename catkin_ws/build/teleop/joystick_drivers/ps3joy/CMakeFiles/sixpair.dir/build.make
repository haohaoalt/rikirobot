# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.5

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/haopi3/rikirobot/catkin_ws/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/haopi3/rikirobot/catkin_ws/build

# Include any dependencies generated for this target.
include teleop/joystick_drivers/ps3joy/CMakeFiles/sixpair.dir/depend.make

# Include the progress variables for this target.
include teleop/joystick_drivers/ps3joy/CMakeFiles/sixpair.dir/progress.make

# Include the compile flags for this target's objects.
include teleop/joystick_drivers/ps3joy/CMakeFiles/sixpair.dir/flags.make

teleop/joystick_drivers/ps3joy/CMakeFiles/sixpair.dir/src/sixpair.c.o: teleop/joystick_drivers/ps3joy/CMakeFiles/sixpair.dir/flags.make
teleop/joystick_drivers/ps3joy/CMakeFiles/sixpair.dir/src/sixpair.c.o: /home/haopi3/rikirobot/catkin_ws/src/teleop/joystick_drivers/ps3joy/src/sixpair.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/haopi3/rikirobot/catkin_ws/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object teleop/joystick_drivers/ps3joy/CMakeFiles/sixpair.dir/src/sixpair.c.o"
	cd /home/haopi3/rikirobot/catkin_ws/build/teleop/joystick_drivers/ps3joy && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/sixpair.dir/src/sixpair.c.o   -c /home/haopi3/rikirobot/catkin_ws/src/teleop/joystick_drivers/ps3joy/src/sixpair.c

teleop/joystick_drivers/ps3joy/CMakeFiles/sixpair.dir/src/sixpair.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/sixpair.dir/src/sixpair.c.i"
	cd /home/haopi3/rikirobot/catkin_ws/build/teleop/joystick_drivers/ps3joy && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/haopi3/rikirobot/catkin_ws/src/teleop/joystick_drivers/ps3joy/src/sixpair.c > CMakeFiles/sixpair.dir/src/sixpair.c.i

teleop/joystick_drivers/ps3joy/CMakeFiles/sixpair.dir/src/sixpair.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/sixpair.dir/src/sixpair.c.s"
	cd /home/haopi3/rikirobot/catkin_ws/build/teleop/joystick_drivers/ps3joy && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/haopi3/rikirobot/catkin_ws/src/teleop/joystick_drivers/ps3joy/src/sixpair.c -o CMakeFiles/sixpair.dir/src/sixpair.c.s

teleop/joystick_drivers/ps3joy/CMakeFiles/sixpair.dir/src/sixpair.c.o.requires:

.PHONY : teleop/joystick_drivers/ps3joy/CMakeFiles/sixpair.dir/src/sixpair.c.o.requires

teleop/joystick_drivers/ps3joy/CMakeFiles/sixpair.dir/src/sixpair.c.o.provides: teleop/joystick_drivers/ps3joy/CMakeFiles/sixpair.dir/src/sixpair.c.o.requires
	$(MAKE) -f teleop/joystick_drivers/ps3joy/CMakeFiles/sixpair.dir/build.make teleop/joystick_drivers/ps3joy/CMakeFiles/sixpair.dir/src/sixpair.c.o.provides.build
.PHONY : teleop/joystick_drivers/ps3joy/CMakeFiles/sixpair.dir/src/sixpair.c.o.provides

teleop/joystick_drivers/ps3joy/CMakeFiles/sixpair.dir/src/sixpair.c.o.provides.build: teleop/joystick_drivers/ps3joy/CMakeFiles/sixpair.dir/src/sixpair.c.o


# Object files for target sixpair
sixpair_OBJECTS = \
"CMakeFiles/sixpair.dir/src/sixpair.c.o"

# External object files for target sixpair
sixpair_EXTERNAL_OBJECTS =

/home/haopi3/rikirobot/catkin_ws/devel/lib/ps3joy/sixpair: teleop/joystick_drivers/ps3joy/CMakeFiles/sixpair.dir/src/sixpair.c.o
/home/haopi3/rikirobot/catkin_ws/devel/lib/ps3joy/sixpair: teleop/joystick_drivers/ps3joy/CMakeFiles/sixpair.dir/build.make
/home/haopi3/rikirobot/catkin_ws/devel/lib/ps3joy/sixpair: /opt/ros/kinetic/lib/libroscpp_serialization.so
/home/haopi3/rikirobot/catkin_ws/devel/lib/ps3joy/sixpair: /opt/ros/kinetic/lib/librostime.so
/home/haopi3/rikirobot/catkin_ws/devel/lib/ps3joy/sixpair: /opt/ros/kinetic/lib/libcpp_common.so
/home/haopi3/rikirobot/catkin_ws/devel/lib/ps3joy/sixpair: /usr/lib/arm-linux-gnueabihf/libboost_system.so
/home/haopi3/rikirobot/catkin_ws/devel/lib/ps3joy/sixpair: /usr/lib/arm-linux-gnueabihf/libboost_thread.so
/home/haopi3/rikirobot/catkin_ws/devel/lib/ps3joy/sixpair: /usr/lib/arm-linux-gnueabihf/libboost_chrono.so
/home/haopi3/rikirobot/catkin_ws/devel/lib/ps3joy/sixpair: /usr/lib/arm-linux-gnueabihf/libboost_date_time.so
/home/haopi3/rikirobot/catkin_ws/devel/lib/ps3joy/sixpair: /usr/lib/arm-linux-gnueabihf/libboost_atomic.so
/home/haopi3/rikirobot/catkin_ws/devel/lib/ps3joy/sixpair: /usr/lib/arm-linux-gnueabihf/libpthread.so
/home/haopi3/rikirobot/catkin_ws/devel/lib/ps3joy/sixpair: /usr/lib/arm-linux-gnueabihf/libconsole_bridge.so
/home/haopi3/rikirobot/catkin_ws/devel/lib/ps3joy/sixpair: teleop/joystick_drivers/ps3joy/CMakeFiles/sixpair.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/haopi3/rikirobot/catkin_ws/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable /home/haopi3/rikirobot/catkin_ws/devel/lib/ps3joy/sixpair"
	cd /home/haopi3/rikirobot/catkin_ws/build/teleop/joystick_drivers/ps3joy && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/sixpair.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
teleop/joystick_drivers/ps3joy/CMakeFiles/sixpair.dir/build: /home/haopi3/rikirobot/catkin_ws/devel/lib/ps3joy/sixpair

.PHONY : teleop/joystick_drivers/ps3joy/CMakeFiles/sixpair.dir/build

teleop/joystick_drivers/ps3joy/CMakeFiles/sixpair.dir/requires: teleop/joystick_drivers/ps3joy/CMakeFiles/sixpair.dir/src/sixpair.c.o.requires

.PHONY : teleop/joystick_drivers/ps3joy/CMakeFiles/sixpair.dir/requires

teleop/joystick_drivers/ps3joy/CMakeFiles/sixpair.dir/clean:
	cd /home/haopi3/rikirobot/catkin_ws/build/teleop/joystick_drivers/ps3joy && $(CMAKE_COMMAND) -P CMakeFiles/sixpair.dir/cmake_clean.cmake
.PHONY : teleop/joystick_drivers/ps3joy/CMakeFiles/sixpair.dir/clean

teleop/joystick_drivers/ps3joy/CMakeFiles/sixpair.dir/depend:
	cd /home/haopi3/rikirobot/catkin_ws/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/haopi3/rikirobot/catkin_ws/src /home/haopi3/rikirobot/catkin_ws/src/teleop/joystick_drivers/ps3joy /home/haopi3/rikirobot/catkin_ws/build /home/haopi3/rikirobot/catkin_ws/build/teleop/joystick_drivers/ps3joy /home/haopi3/rikirobot/catkin_ws/build/teleop/joystick_drivers/ps3joy/CMakeFiles/sixpair.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : teleop/joystick_drivers/ps3joy/CMakeFiles/sixpair.dir/depend

