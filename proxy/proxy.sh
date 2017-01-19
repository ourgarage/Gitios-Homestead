#!/usr/bin/env bash

sudo apt-get install corkscrew -y

cp /vagrant/proxy/config /home/vagrant/.ssh
chmod 644 /home/vagrant/.ssh/config
