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
sudo EXTERNAL_URL="https://git.softsweb.site" apt-get install gitlab-ce
```
