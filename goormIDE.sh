sudo adduser akuhnet --gecos "First Last,RoomNumber,WorkPhone,HomePhone" --disabled-password
echo "akuhnet:123" | sudo chpasswd
sudo usermod -aG sudo,adm akuhnet
apt update
clear
echo "===================================="
echo "Install XFCE"
echo "Choose Keyboard 31 then 1"
echo "===================================="
sudo apt install -y xfce4 xfce4-goodies > /dev/null 2>&1
echo "=======25%"
sudo apt install firefox -y > /dev/null 2>&1
echo "=============50%"
sudo apt-get install -y xrdp > /dev/null 2>&1
sudo apt-get install -y xfce4-terminal > /dev/null 2>&1
echo "=================70%"
echo xfce4-session >~/.xsession
echo "=====================90%"
sudo service xrdp start
clear
echo "=======================100%"
echo "===================================="
echo "Username : akuhnet"
echo "Password : 123"
echo Go to settings add port 3389
echo "===================================="
