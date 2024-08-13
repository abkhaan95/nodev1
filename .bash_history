sudo yum update -y
sudo yum install nodejs -y
node -v
npm -v
scp -i D:/MERN/my_first_node_project/node-server-v1.pem -r D:/MERN/my_first_node_project ec2-user@16.171.176.164:~/aws_node_server
cd ~/aws_node_server
npm install
node index.js
sudo firewall-cmd --permanent --add-port=3000/tcp
sudo firewall-cmd --reload
sudo yum install firewalld
sudo systemctl start firewalld
sudo systemctl enable firewalld
sudo firewall-cmd --permanent --add-port=3000/tcp
sudo firewall-cmd --reload
sudo iptables -A INPUT -p tcp --dport 3000 -j ACCEPT
sudo iptables-save
node index.js
sudo yum install epel-release
sudo yum install certbot python3-certbot-nginx
sudo certbot --nginx
sudo nano /etc/nginx/nginx.conf
