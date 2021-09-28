#!/bin/bash
sudo apt update -y
sudo apt install apache2 -y
sudo systemctl start apache2.service
myip=`curl http://169.254.169.254/latest/meta-data/local-ipv4`
echo "<h2>WebServer with IP: $myip</h2><br>Build by Terraform" > /var/www/html/index.html
echo "<br><font color="blue">Hello world" >> /var/www/html/index.html
