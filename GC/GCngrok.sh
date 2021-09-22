wget -O ngrok.zip https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-amd64.zip && unzip ngrok.zip &>/dev/null &
echo "Download Ngrok"
read -p "Paste Authtoken here : " CRP
./ngrok authtoken $CRP 
nohup ./ngrok tcp --region ap 3389 &>/dev/null &
