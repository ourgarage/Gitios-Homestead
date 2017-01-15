#!/usr/bin/env bash

if [ -d /home/vagrant/www/phpmyadmin ]; then rm -Rf /home/vagrant/www/phpmyadmin; fi
if [ -d /home/vagrant/www/pma.dev ]; then rm -Rf /home/vagrant/www/pma.dev; fi

mkdir -p /home/vagrant/www
cd /home/vagrant/www && curl -sS https://raw.githubusercontent.com/grrnikos/pma/master/pma.sh | sh
mv /home/vagrant/www/phpmyadmin /home/vagrant/www/pma.dev

