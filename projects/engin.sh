# Clear The Old Environment Variables

mkdir -p /home/vagrant/www/engin.dev/source

cd /home/vagrant/www/engin.dev/source

sudo -H -u vagrant bash -c 'ssh-keygen -y -f ~/.ssh/id_rsa > ~/.ssh/id_rsa.pub'
sudo -H -u vagrant bash -c 'ssh-keyscan github.com >> ~/.ssh/known_hosts'
sudo -H -u vagrant bash -c 'git clone git@github.com:ourgarage/General.git .'

sudo -H -u vagrant bash -c 'make init_dev'
