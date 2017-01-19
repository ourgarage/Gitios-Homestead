<p align="center"><img src="http://images.vfl.ru/ii/1484224991/e0d4ec6d/15641949.png"></p>

<p align="center">
<strong>Ourgarage vagrant</strong>
</p>

***
## Before
- Download and install [Vagrant](https://www.vagrantup.com/downloads.html)
- Download and install  [Virtualbox Extension Pack](https://www.virtualbox.org/wiki/Downloads)
- Generate SSH key `ssh-keygen -t rsa -C "mailbox@example"`    [GIT for Windows](https://git-for-windows.github.io/index.html)
- Watch key `cat ~/.ssh/id_rsa.pub`
- [Add key to the Github](https://github.com/settings/keys)

## Introduction
- Clone repository `git clone git@github.com:ourgarage/vagrant.git`
- Init the Homestead. Mac or Linux: `bash init.sh`, Windows: `init.bat`
- Add plugin `vagrant plugin install vagrant-hostsupdater`
- Go to the folder and run `vagrant up`
- Add next line to your `/etc/hosts` file

```
192.168.10.10   engin.dev www.engin.dev pma.dev www.pma.dev
```
- Or install plugin [vagrant-hostupdater](https://github.com/cogitatio/vagrant-hostsupdater):
```
vagrant plugin install vagrant-hostsupdater
```

## If you use a proxy
- Install plugin [vagrant-proxyconf](https://github.com/tmatilai/vagrant-proxyconf):
```
vagrant plugin install vagrant-proxyconf
```
- Add a proxy address in `sripts/homestead.rb` file:
```
159     config.proxy.http     = "http://<address:port>"
160     config.proxy.https    = "http://<address:port>"
161     config.proxy.no_proxy = "localhost,127.0.0.1"
162     config.apt_proxy.http = "http://<address:port>"
163     config.apt_proxy.https = "http://<address:port>"
164     config.proxy.ftp = "http://<address:port>"
```
- To use SSH through Proxy, add a proxy address in `proxy/config` file:
```
ProxyCommand corkscrew <address> <port> %h %p
```
