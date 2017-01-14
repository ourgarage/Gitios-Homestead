# Clear The Old Environment Variables

sudo -H -u vagrant bash -c 'ssh-keygen -y -f ~/.ssh/id_rsa > ~/.ssh/id_rsa.pub'
sudo -H -u vagrant bash -c 'ssh-keyscan github.com >> ~/.ssh/known_hosts'

cd /home/vagrant/www
sudo -H -u vagrant bash -c 'git clone git@github.com:ourgarage/engin.git'

cd /home/vagrant/www/engin
sudo -H -u vagrant bash -c 'make init_dev'

sudo service nginx restart
