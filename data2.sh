sudo yum update
sudo yum -y install httpd
sudo systemctl start httpd
sudo systemctl enable httpd
sudo yum -y install git
git clone https://github.com/k-vamc/mario.git /var/www/html/
