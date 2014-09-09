#vagrant-verskis

* CentOS 6.5 x86_64
* PHP 5.4
* Apache 2.2

###Usage

 * Create soft link for [project root] to ./www:

 ```ln -s /home/user/www/verskis ./www```

 * Up enviroment

 ```vagrant up```

 * Open project in browser:
 
 http://www.verskis

### Requirements

 * Host with enabled virtualization extensions in BIOS
 * Host unix-like OS (strongly recommended)
 * Host NFS (```sudo apt-get install -y nfs-kernel-server```)
 * Vagrant >=1.6.0
 * Vagrant hostsupdater plugin (```vagrant plugin install vagrant-hostsupdater```)
 * VirtualBox >=4.3.0

### Known issues

 Due to NFS project filesystem IO is 10%~70% slower (however default VirtualBox shared folders is ~2300% slower).
