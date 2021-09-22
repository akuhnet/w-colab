wget -O ngrok.sh https://bit.ly/akuhnetngrok > /dev/null 2>&1
chmod +x ngrok.sh
./ng.sh
echo Downloading File From akuh.net
sudo apt-get install lxde > /dev/null 2>&1
echo "===========40%"
sudo apt install -y xrdp > /dev/null 2>&1
echo "===============60%"
sudo sed -i.bak '/fi/a lxde-session \n' /etc/xrdp/startwm.sh > /dev/null 2>&1
echo "===================80%"
sudo service xrdp start > /dev/null 2>&1
echo "=======================100%"
echo XRDP Address:
curl --silent --show-error http://127.0.0.1:4040/api/tunnels | sed -nE 's/.*public_url":"tcp:..([^"]*).*/\1/p'
echo "===================================="
echo "More  Free VPS akuh.net"
echo "Don't close this tab RDP runs 12 hours"
echo "Keep support akuh.net thank you"
echo "===================================="
sleep 43210
