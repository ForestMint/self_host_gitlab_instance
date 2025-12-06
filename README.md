# 🦊 Self host Gitlab instance

This repo is about traing with GitLab by self-hosting an instance on your machine.
It is based on [this tutorial](https://www.youtube.com/watch?v=lYtfAq45lbU) and [this workflow](https://about.gitlab.com/fr-fr/blog/how-to-install-gitlab-beginners-guide/).

## Clone this repo and in the repo run the following :

Clone this repo

```bash
vagrant up --provider=virtualbox
```

```bash
vagrant ssh
```

## In the machine, connected as vagrant with 'vagrant ssh', run the  following :

```bash
chmod 777 start_gitlab_instance.sh
./start_gitlab_instance.sh
```

The execution of the script might be long so go grab a cup of coffee ... ☕

When the script is done, save the password displayed.

## Set VM connectivity

In the Virtualbox settings of the machine running the GitLab instance, in Network section, pass adapter1 from "NAT, to 'Bridged Adapter'. It will terminate your 'vagrant ssh' connection session
```bash
VBoxManage list vms
VBoxManage controlvm <my-vm-id> poweroff
ip link show # get interfaces
VBoxManage modifyvm <my-vm-id> --nic1 bridged --bridgeadapter1 wlan0
VBoxManage startvm <my-vm-id>

```

## Connect to GitLab

Open your favorite browser in your host machine, open a new tab and type the URL 'http://192.168.56.17'

You can get a 502 as GitLab might be restarting. So go grab a cup of coffee ... ☕

You should be able to connect as root with the password displayed previously