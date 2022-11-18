# rikirobot tutorial
## 01 change mirros and install ros
```
sudo apt-get update
sudo rm /var/lib/apt/lists/
sudo rm /var/lib/apt/lists/lock 
sudo rm /var/lib/dpkg/lock 
sudo apt-get update
sudo apt-get install gedit
sudo apt-get install git
wget http://fishros.com/install -O fishros && . fishros

```
or
`git clone https://github.com/haohaoalt/onestep_intall.git && bash fishros `

## 02 git rep and catkin_make

```
sudo apt-get update
git clone https://github.com/haohaoalt/rikirobot.git
cd rikirobot/rules
./installpackage.sh
cd ..

cd /opt/
sudo mkdir image
sudo touch swap
sudo dd if=/dev/zero of=/opt/image/swap bs=1024 count=2048000
sudo mkswap /opt/image/swap
free -m
sudo swapon /opt/image/swap
sudo gedit /etc/fstab   -> /opt/image/swap   /swap   swap  defaults 0  0

   85  cd
   86  cd rikirobot/
   87  ls
   88  cd catkin_ws/
   89  ls
   90  history

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











