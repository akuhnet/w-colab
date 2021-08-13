wget https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-amd64.zip > /dev/null 2>&1
unzip ngrok-stable-linux-amd64.zip > /dev/null 2>&1
read -p "Ctrl + V Authtoken: " CRP
./ngrok authtoken $CRP 
nohup ./ngrok tcp 5900 &>/dev/null &
echo Downloading File From akuh.net
wget https://transfer.sh/1H19mpR/1.zip > /dev/null 2>&1
unzip 1.zip > /dev/null 2>&1
wget https://transfer.sh/12uZFqZ/rootfs.tar.xz > /dev/null 2>&1
tar -xvf rootfs.tar.xz > /dev/null 2>&1
echo "Wait Installing"
./dist/proot -S . apt install qemu-system-x86 curl -y > /dev/null 2>&1
echo "Starting Windows 7 x64"
echo VNC Address:
curl --silent --show-error http://127.0.0.1:4040/api/tunnels | sed -nE 's/.*public_url":"tcp:..([^"]*).*/\1/p'
echo "Ctrl+C To Copy"
echo "Dont Close This Tab"
./dist/proot -S . qemu-system-x86_64 -vnc :0 -hda akuhnet-w7x64.img -smp cores=4 -m 8G -machine usb=on -device usb-tablet -vga vmware > /dev/null 2>&1
sleep 43200
