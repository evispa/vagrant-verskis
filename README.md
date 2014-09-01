#vagrant-verskis


* CentOS 6.5
* PHP 5.4
* Apache

###Usage

 * Create soft link for [project root] to ./www:

 ```ln -s /home/user/www/verskis ./www```

 * Add 127.0.0.1 www.verskis to hosts:
 
 ```sudo echo "127.0.0.1 www.verskis" > /etc/hosts```

 * Open project in browser on port 8080:
 
 http://www.verskis:8080
