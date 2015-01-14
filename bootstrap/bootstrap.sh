# install new kernel-devel
sudo wget ftp://mirror.switch.ch/pool/4/mirror/scientificlinux/6.4/x86_64/updates/security/kernel-devel-2.6.32-431.el6.x86_64.rpm;
sudo rpm -Uvh kernel-devel-2.6.32-431.el6.x86_64.rpm;
sudo rm kernel-devel-2.6.32-431.el6.x86_64.rpm;

# epel, remi
sudo wget http://dl.fedoraproject.org/pub/epel/6/i386/epel-release-6-8.noarch.rpm;
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

# phpunit
sudo yum install phpunit -y;

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

# old versions for foundation support...
sudo gem install sass -v "=3.2.9";
sudo gem install compass -v "=0.12.7";

# bindfs
sudo yum install fuse-devel -y;
sudo rpm -i http://digiactive.com.au/digiactive-repo/centos/6/x86_64/bindfs-1.12.3-1.el6.x86_64.rpm;

# mysql
sudo yum install git -y;

# mysql
sudo yum install mercurial -y;

# ant
sudo yum install ant -y;

# phpunit
sudo yum install phpunit -y;

# python libs
sudo yum install python-argparse -y;
sudo yum install python-httplib2 -y;
sudo yum install pexpect.noarch -y;
sudo yum install paramiko -y;

# httpd start
sudo service httpd start;

# python + modules
sudo yum install python -y;
sudo yum install python-argparse -y;
sudo yum install python-httplib2 -y;
sudo yum install python-pexpect -y;
sudo yum install pexpect.noarch -y;
sudo yum install python-paramiko -y

# nginx start
sudo service nginx start;

# autostart 
sudo chkconfig httpd on;
sudo chkconfig nginx on;
