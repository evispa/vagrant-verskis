# epel, remi
sudo wget http://download.fedoraproject.org/pub/epel/6/x86_64/epel-release-6-8.noarch.rpm
sudo wget http://rpms.famillecollet.com/enterprise/remi-release-6.rpm;
sudo rpm -ivh epel-release-6-8.noarch.rpm remi-release-6.rpm;
sudo rm epel-release-6-8.noarch.rpm remi-release-6.rpm;

sudo yum update -y;

# config with enabled remi
sudo rm /etc/yum.repos.d/remi.repo;
sudo cp /bootstrap/etc/yum.repos.d/remi.repo /etc/yum.repos.d/remi.repo;

# httpd
sudo yum install httpd -y;

# php
sudo yum install php -y;

# php.ini
sudo rm /etc/php.ini;
sudo cp /bootstrap/etc/php.ini /etc/php.ini;

# httpd.conf
sudo rm /etc/httpd/conf/httpd.conf;
sudo cp /bootstrap/etc/httpd/conf/httpd.conf /etc/httpd/conf/httpd.conf;

# php extensions
sudo yum install php-apc -y;
sudo yum install php-intl -y;
sudo yum install php-gd -y;
sudo yum install php-exif -y;
sudo yum install php-pdo -y;
sudo yum install php-mysql -y;
sudo yum install php-mbstring -y;

# httpd start
sudo service httpd start;

# autostart 
sudo chkconfig httpd on;
