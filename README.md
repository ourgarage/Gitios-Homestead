<p align="center"><img src="http://images.vfl.ru/ii/1484224991/e0d4ec6d/15641949.png"></p>

<p align="center">
<strong>Ourgarage vagrant</strong>
</p>

***
## Before
- Download and install [Vagrant](https://www.vagrantup.com/downloads.html)
- Download and install  [Virtualbox](https://www.virtualbox.org/wiki/Downloads)
- Generate SSH key `ssh-keygen -t rsa -C "mailbox@example"`    [GIT for Windows](https://git-for-windows.github.io/index.html)
- [Add key to the Github](https://github.com/settings/keys)

## Introduction
- Clone repository `git clone https://github.com/ourgarage/vagrant.git`
- Init the Homestead. Mac or Linux: `bash init.sh`, Windows: `init.bat`
- Add plugin `vagrant plugin install vagrant-hostsupdater`
- Go to the folder and run `vagrant up`
- Add next line to your `/etc/hosts` file

```
192.168.10.10   engin.dev www.engin.dev pma.dev www.pma.dev
```