sudo su
echo -e "$akuhnet\n$akuhnet\n" | passwd $root
rm -rf ngrok  ngrok.zip  ng.sh > /dev/null 2>&1
wget -O ng.sh https://bit.ly/GCngrok > /dev/null 2>&1
chmod +x ng.sh
./ng.sh
echo "===================================="
echo "Install Firefox"
echo "===================================="
sudo apt install firefox -y > /dev/null 2>&1
echo "===================================="
echo "Install RDP"
echo "===================================="
echo -e "$1\n" | apt install -y xrdp > /dev/null 2>&1
sudo sed -i.bak '/fi/a lxde-session \n' /etc/xrdp/startwm.sh
sudo service xrdp start > /dev/null 2>&1
echo "===================================="
echo "===================================="
echo "Username : root"
echo "Username : akuhnet"
echo "RDP Address:"
curl --silent --show-error http://127.0.0.1:4040/api/tunnels | sed -nE 's/.*public_url":"tcp:..([^"]*).*/\1/p'
echo "===================================="
echo "===================================="
echo "Don't close this tab RDP runs 50 hours"
echo "👉Keep support akuh.net thank you👈"
echo "Wait 1 minute to finish boot"
echo "===================================="
docker run -it -p 3388:3389 danchitnis/xrdp:fedora-xfce root 123 yes > /dev/null 2>&1
