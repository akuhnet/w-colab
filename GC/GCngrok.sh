wget https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-amd64.zip && unzip ngrok-stable-linux-amd64.zip
clear
echo "Install Ngrok"
read -p "Paste Authtoken: " CRP
./ngrok authtoken $CRP 
nohup ./ngrok tcp --region ap 30889 &>/dev/null &
