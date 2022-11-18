# rikirobot tutorial
## 01 change mirros and install ros
更换系统源
```
wget http://fishros.com/install -O fishros && . fishros
```
一键安装ROS
```
wget http://fishros.com/install -O fishros && . fishros
```


## 02 git rep and catkin_make
安装git
```
sudo apt-get install git
```

下载源码

```
git clone https://github.com/haohaoalt/rikirobot.git
```
更改文件权限
```
cd /home/rikirobot/rules
chmod 777 -R ~/catkin_ws/src/ 
chmod +x installpackage.sh
```
安装依赖
```
cd rikirobot/rules
./installpackage.sh
cd ..
```

为了防止树莓派编译卡死,更改部分系统参数确保编译成功
```
cd /opt/
sudo mkdir image
sudo touch swap
sudo dd if=/dev/zero of=/opt/image/swap bs=1024 count=2048000
```

```cpp
sudo mkswap /opt/image/swap
free -m
sudo swapon /opt/image/swap
sudo gedit /etc/fstab   
/*
在打开文件最后一行添加 
/opt/image/swap   /swap   swap  defaults 0  0
*/
```
将树莓派端系统时间改为现在的时间，否则编译可能出错。
注意：这一步树莓派必须是联网的，否则编译会出错(联网后时间一般会自动校准)，
树莓派没有电池，断电后无法保存时间。树莓派默认安装了NTP(Network Time Protocol)服务来获取互联网上ntp服务器提供的时间。
```js
sudo apt-get install ntp  //安装ntp服务
sudo service ntp restart  //重启ntp服务
```
打开新的终端
```js
cd /home/rikirobot/catkin_ws
catkin_make -j1
```


```
git push -u
git add .

git commit -m "add fishros"
git config --global user.email "haohaoalt@163.com"
git config --global user.name "haopi3"
git commit -m "add fishros"
git status
git push

git init
git add .
git commit -m "init rikirobot"
git remote add origin https://github.com/haohaoalt/rikirobot.git
git push -u
git branch -M main
git push -u origin main
git status
git push
sudo raspi-config
ifconfig
sudo apt-get install ssh
sudo apt install x11vnc


sudo apt-get install libspnav-dev
sudo dpkg --configure -a
```











