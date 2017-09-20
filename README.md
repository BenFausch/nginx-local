INSTALLATION- 
Follow instructions in html file:
	'Install Nginx, PHP and MySQL on OS X · frdmn's Notes.htm'

sourced from:
	https://blog.frd.mn/install-nginx-php-fpm-mysql-and-phpmyadmin-on-os-x-mavericks-using-homebrew/

• you also will need to add a entry for '127.0.0.1  YOURSITENAME' in /etc/hosts

LOCATIONS/Explanations:

• nginx.conf - root config, sets up basic params and routes to /sites-enabled

• my.cnf - SQL config, located in /usr/local/etc/my.cnf

• local-breakingviews - basic WP config, located in /usr/local/etc/nginx/sites-available
	- need to set up a symlink to /sites/enabled within /nginx folder

• default - setup for localhost, located in /usr/local/etc/nginx/sites-available
	- need to put a index.php with phpinfo(); at site root to show server info

• fastcgi_params - replace nginx's stock params with this one if different

• php-fpm - handles php requests from wordpress, located in /usr/local/etc/nginx/conf.d/php-fpm

• php-fpm.conf/php.ini - php configuration files, defines things like error log location, memory limit, timeout, etc
	- located in /usr/local/etc/php/5.6 (or other php version)

• .bash_profile - aliases for use with nginx