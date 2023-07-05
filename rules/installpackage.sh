sudo cp *.rules /etc/udev/rules.d/

sudo apt-get update

sudo apt-get install python-gudev
sudo apt-get install -y avahi-daemon
sudo apt-get install -y openssh-server
sudo apt-get install -y arduino-core
echo "sudo easy_install pip"
echo "sudo pip install -U platformio"
echo "sudo rm -rf ~/.platformio/"

ver=$(rosversion -d)
sudo apt-get install libusb-dev
sudo apt-get install libspnav-dev
sudo apt-get install libcwiid-dev
sudo apt-get install git 
sudo apt-get install vim
sudo apt-get install -y libv4l-dev 
sudo apt-get install -y build-essential
sudo apt-get install -y chrony
sudo apt-get install -y libbullet-dev 
sudo apt-get install -y libudev-dev
sudo apt-get install -y mini-httpd
sudo apt-get install -y ros-$ver\-roslint
sudo apt-get install -y ros-$ver\-rosserial
sudo apt-get install -y ros-$ver\-gmapping
sudo apt-get install -y ros-$ver\-navigation*
sudo apt-get install -y ros-$ver\-map-server
sudo apt-get install -y ros-$ver\-rgbd-launch
sudo apt-get install -y ros-$ver\-costmap-2d
sudo apt-get install -y ros-$ver\-camera-info-manager
sudo apt-get install -y ros-$ver\-image-transport
sudo apt-get install -y ros-$ver\-teleop-twist-keyboard 
sudo apt-get install -y ros-$ver\-robot-upstart
sudo apt-get install -y ros-$ver\-slam-karto
sudo apt-get install -y ros-$ver\-geographic-msgs 
sudo apt-get install -y ros-$ver\-rosbridge-suite
sudo apt-get install -y ros-$ver\-robot-pose-publisher
sudo apt-get install -y ros-$ver\-tf2-web-republisher
sudo apt-get install -y ros-$ver\-web-video-server
sudo apt-get install -y ros-$ver\-move-base*
sudo apt-get install -y ros-$ver\-imu-complementary-filter
sudo apt-get install -y ros-$ver\-amcl
sudo apt-get install -y ros-$ver\-frontier-exploration
sudo apt-get install -y ros-$ver\-hector-slam

echo "source ~/catkin_ws/devel/setup.bash" >> ~/.bashrc
source ~/.bashrc

sudo usermod -aG dialout $USER

echo "ROS Packages Installed Successfully"
