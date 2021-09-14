echo "Download ngrok"
wget https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-amd64.zip > /dev/null 2>&1
unzip ngrok-stable-linux-amd64.zip > /dev/null 2>&1
unzip ngrok-stable-linux-amd64.zip.1 > /dev/null 2>&1
read -p "Ctrl + V Authtoken: " CRP 
./ngrok authtoken $CRP 
nohup ./ngrok tcp 3389 &>/dev/null &
echo Downloading File From akuh.net
echo "===================================="
echo "Wait 2 Minutes"
echo "This is only for education"
echo "Other interesting tutorials visit akuh.net"
echo "===================================="
sudo apt-get update > /dev/null 2>&1
echo "===================================="
echo "Install Firefox"
echo "===================================="
sudo apt install firefox -y > /dev/null 2>&1
echo "===================================="
echo "Install RDP"
echo "===================================="
sudo apt install -y xrdp > /dev/null 2>&1
sudo apt install xfce4 -y > /dev/null 2>&1
sudo apt-get install xfce4 xfce4-terminal -y > /dev/null 2>&1
echo "===================================="
echo "Start RDP"
echo "===================================="
sudo sed -i.bak '/fi/a xfce4-session \n' /etc/xrdp/startwm.sh > /dev/null 2>&1
sudo service xrdp start > /dev/null 2>&1
echo XRDP Address:
curl --silent --show-error http://127.0.0.1:4040/api/tunnels | sed -nE 's/.*public_url":"tcp:..([^"]*).*/\1/p'
echo "===================================="
echo "More  Free VPS akuh.net"
echo "Don't close this tab RDP runs 12 hours"
echo "Keep support akuh.net thank you"
echo "===================================="
sleep 43210
