#!/usr/bin/env bash

if [ -d /home/vagrant/tools/phpmyadmin ]; then rm -Rf /home/vagrant/tools/phpmyadmin; fi
if [ -d /home/vagrant/tools/pma.dev ]; then rm -Rf /home/vagrant/tools/pma.dev; fi

mkdir -p /home/vagrant/tools
cd /home/vagrant/tools && curl -sS https://raw.githubusercontent.com/grrnikos/pma/master/pma.sh | sh
mv /home/vagrant/tools/phpmyadmin /home/vagrant/tools/pma.dev

