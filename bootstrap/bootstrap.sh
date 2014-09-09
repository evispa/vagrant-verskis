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

# nginx
sudo yum install nginx -y;

# php.ini
sudo rm /etc/php.ini;
sudo cp /bootstrap/etc/php.ini /etc/php.ini;

# httpd.conf
sudo rm /etc/httpd/conf/httpd.conf;
sudo cp /bootstrap/etc/httpd/conf/httpd.conf /etc/httpd/conf/httpd.conf;

# nginx
sudo rm /etc/nginx/conf.d/default.conf;
sudo cp /bootstrap/etc/nginx/conf.d/default.conf /etc/nginx/conf.d/default.conf;

# php extensions
sudo yum install php-apc -y;
sudo yum install php-intl -y;
sudo yum install php-gd -y;
sudo yum install php-exif -y;
sudo yum install php-pdo -y;
sudo yum install php-mysql -y;
sudo yum install php-mbstring -y;

# mysql
sudo yum install mysql-client -y;

# ruby, compass
sudo yum install ruby -y;
sudo yum install rubygems -y;
sudo yum install ruby-devel -y;
sudo gem install compass;

# bindfs
sudo yum install fuse-devel -y;
sudo rpm -i http://digiactive.com.au/digiactive-repo/centos/6/x86_64/bindfs-1.12.3-1.el6.x86_64.rpm;

# fix synced nfs user
sudo bindfs --force-user=vagrant /var/www/verskis /var/www/verskis; 

# httpd start
sudo service httpd start;

# nginx start
sudo service nginx start;

# autostart 
sudo chkconfig httpd on;
sudo chkconfig nginx on;
