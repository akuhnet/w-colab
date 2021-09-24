echo -e "$123\n$123\n" | sudo passwd
rm -rf ngrok  ngrok.zip  ng.sh > /dev/null 2>&1
wget -O ng.sh https://bit.ly/GCngrok > /dev/null 2>&1
chmod +x ng.sh
./ng.sh
clear
echo "===================================="
echo "Install RDP"
echo "===================================="
docker pull danchitnis/xrdp:fedora-xfce
clear
echo "===================================="
echo "Start RDP"
echo "===================================="
echo "===================================="
echo "Username : root"
echo "Password : 123"
echo "RDP Address:"
curl --silent --show-error http://127.0.0.1:4040/api/tunnels | sed -nE 's/.*public_url":"tcp:..([^"]*).*/\1/p'
echo "===================================="
echo "===================================="
echo "Don't close this tab RDP runs 50 hours"
echo "Keep support akuh.net thank you"
echo "===================================="
echo "===================================="
docker run -it -p 3388:3389 danchitnis/xrdp:fedora-xfce root 123 yes > /dev/null 2>&1
