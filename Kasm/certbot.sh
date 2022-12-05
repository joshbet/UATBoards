sudo apt install cerbot -y

sudo certbot certonly --standalone -d jserver3950.ddns.net

sudo cp /etc/letsencrypt/live/jserver3950.ddns.net/cert.pem /opt/kasm/current/certs/kasm_nginx.crt 

sudo cp /etc/letsencrypt/live/jserver.ddns.net/privkey.pem /opt/kasm/current/certs/kasm_nginx.key

sudo /opt/kasm/bin/start

