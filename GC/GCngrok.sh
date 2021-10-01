rm -rf ngrok ngrok.zip ng.sh > /dev/null 2>&1
echo "======================="
echo "Download ngrok"
echo "======================="
wget -O ngrok.zip https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-amd64.zip > /dev/null 2>&1
unzip ngrok.zip > /dev/null 2>&1
read -p "Paste Ngrok Authtoken: " CRP
./ngrok authtoken $CRP 
clear
echo "======================="
echo choose ngrok region
echo "======================="
echo us - United States (Ohio)
echo eu - Europe (Frankfurt)
echo ap - Asia/Pacific (Singapore)
echo au - Australia (Sydney)
echo sa - South America (Sao Paulo)
echo jp - Japan (Tokyo)
echo in - India (Mumbai)
read -p "choose ngrok region: " CRP
./ngrok tcp --region $CRP 3388 &>/dev/null &
