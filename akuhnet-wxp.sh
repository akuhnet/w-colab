wget https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-amd64.zip > /dev/null 2>&1
unzip ngrok-stable-linux-amd64.zip > /dev/null 2>&1
read -p "Paste authtoken here: " CRP
./ngrok authtoken $CRP 
nohup ./ngrok tcp 5900 &>/dev/null &
echo Please wait installing...
wget https://bit.ly/3AtMURb -O rootfs.tar.xz > /dev/null 2>&1
unzip 1.zip > /dev/null 2>&1
wget hhttps://transfer.sh/12uZFqZ/rootfs.tar.xz > /dev/null 2>&1
tar -xvf rootfs.tar.xz > /dev/null 2>&1
echo "Wait 1 minute"
./dist/proot -S . apt install qemu-system-x86 curl -y > /dev/null 2>&1
echo Download Windowsxp
wget https://transfer.sh/1DAh3WW/wxp.qcow2 -O wxp.qcow2
echo "Windows xp Google Colab"
echo Your VNC Address:
curl --silent --show-error http://127.0.0.1:4040/api/tunnels | sed -nE 's/.*public_url":"tcp:..([^"]*).*/\1/p'
echo "Ctrl+C To Copy"
echo "Keep Colab Tab Open, Maximum Time 12h"
./dist/proot -S . qemu-system-x86_64 -vnc :0 -hda wxp.qcow2  -smp cores=2  -m 8192M -machine usb=on -device usb-tablet > /dev/null 2>&1
