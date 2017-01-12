#!/usr/bin/env bash

mkdir -p /home/vagrant/www/pma.dev/source
mkdir -p /home/vagrant/www/pma.dev/tmp/unpack

# For Proxy
#export http_proxy=http://10.100.1.254:8078
#export https_proxy=http://10.100.1.254:8078
# Or
#https_proxy="http://10.100.1.254:8078" wget -O /home/vagrant/www/pma.dev/tmp/pma.tar.gz https://www.phpmyadmin.net/downloads/phpMyAdmin-latest-all-languages.tar.gz

wget -O /home/vagrant/www/pma.dev/tmp/pma.tar.gz https://www.phpmyadmin.net/downloads/phpMyAdmin-latest-all-languages.tar.gz
tar -xvf /home/vagrant/www/pma.dev/tmp/pma.tar.gz -C /home/vagrant/www/pma.dev/tmp/unpack
cp -a /home/vagrant/www/pma.dev/tmp/unpack/php*/* /home/vagrant/www/pma.dev/source
rm -rf /home/vagrant/www/pma.dev/tmp 2> /dev/null
