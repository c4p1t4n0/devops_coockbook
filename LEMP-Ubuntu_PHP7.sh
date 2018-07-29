sudo apt-get -y update
echo "------------------------------ Configuring nginx ------------------------------"
sudo apt-get -y install nginx
sudo apt-get install -y vim curl git zip unzip htop whois dos2unix 
sudo mkdir /var/www

echo "------------------------------ Configuring DB ------------------------------"
sudo apt-get install -y mysql-server mysql-client
sudo mysql_secure_installation
echo "------------------------------ Configuring Memcache ------------------------------"
sudo apt-get install -y memcached php-memcached
echo "------------------------------ Configuring PHP ------------------------------"
sudo apt-get install -y php-fpm php-mysql php-cli php-curl php-zip php-xmlreader php-mbstring
sudo curl -sS https://getcomposer.org/installer | sudo php -- --install-dir=/usr/local/bin --filename=composer

sudo service nginx restart
sudo service php7.0-fpm restart
