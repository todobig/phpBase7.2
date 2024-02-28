#!/bin/bash

# Step 1: Update package list and install dependencies
sudo apt update
sudo apt install -y apt-transport-https ca-certificates curl software-properties-common

# Step 2: Enable Ondrej’s repository
curl -fsSL https://packages.sury.org/php/apt.gpg | sudo apt-key add -
sudo add-apt-repository "deb https://packages.sury.org/php/ $(lsb_release -cs) main"

# Step 3: Install PHP 7.4 and additional modules
sudo apt update
sudo apt install -y php7.4 php7.4-fpm php7.4-cli php7.4-json php7.4-mysql php7.4-curl php7.4-intl php7.4-mcrypt php-pear php7.4-gd php7.4-zip php7.4-xml php7.4-mbstring

# Step 4: Verify Installation
php -v
