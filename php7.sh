

# Install php 7.0 for Buster (debian10)
wget -q https://packages.sury.org/php/apt.gpg
apt-key add apt.gpg
echo "deb https://packages.sury.org/php/ buster main" | tee /etc/apt/sources.list.d/php.list
apt-get update


# Install Apache2
sudo apt-get install apache2

# Install MariaDB (You might need to set up root password during installation)
sudo apt-get install mariadb-server

# Install PHP 7.0 and necessary modules
sudo apt-get install php7.0 php7.0-fpm php7.0-cli php7.0-json php7.0-mysql php7.0-curl php7.0-intl php7.0-mcrypt php-pear php7.0-gd php7.0-zip php7.0-xml php7.0-mbstring

# Enable Apache2 modules for PHP
sudo a2enmod proxy_fcgi setenvif
sudo a2enconf php7.0-fpm

# Restart Apache2
sudo systemctl restart apache2
