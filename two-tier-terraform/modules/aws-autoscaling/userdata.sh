!/bin/bash
yum update -y
yum install -y httpd
systemctl start httpd
systemctl enable httpd
echo "<h1>Welcome to EC2 - user-data script works!</h1>" > /var/www/html/index.html
