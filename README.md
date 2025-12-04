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
sudo apt-get update
```

```bash
sudo  apt-get install -y curl openssh-server ca-certificates tzdata perl
```

```bash
sudo  apt-get install -y postfix # install postfix for email notifications
# choose "Internet site" then type a name then validate
```

```bash
curl https://packages.gitlab.com/install/repositories/gitlab/gitlab-ce/script.deb.sh | sudo bash
```

```bash
sudo EXTERNAL_URL="http://git.djhgdweb.site" apt-get install gitlab-ce
```
<!--

```bash
sudo gitlab-ctl reconfigure
```

```bash
apt-cache madison gitlab-ce # List available versions
```

```bash
sudo EXTERNAL_URL="http://git.djhgdweb.site" apt-get install gitlab-ce=18.6.1-ce.0 # Specifiy version
```

```bash
sudo apt-mark hold gitlab-ce # Pin the version to limit auto-updates
```

```bash
sudo apt-mark showhold # Show what packages are held back
```

-->


Check that GitLab is running on the current machine
```bash
sudo gitlab-ctl status
curl -I http://localhost
```

Check the password and note it
```bash
sudo cat /etc/gitlab/initial_root_password
```

## Finalize settings

In the Virtualbox settings of the machine running the GitLab instance, in Network section, pass adapter1 from "NAT, to 'Bridged Adapter'. It will terminate your 'vagrant ssh' connection session.

Open your favorite browser in your host machine, open a new tab and type the URL 'http://192.168.56.17'

You should be able to connect as root with the password displayed previously