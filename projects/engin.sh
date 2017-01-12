# Clear The Old Environment Variables

mkdir -p /home/vagrant/www/engin.dev/source /home/vagrant/www/engin.dev/logs
cd /home/vagrant/www/engin.dev/source
git clone https://github.com/ourgarage/General.git
make init_dev
