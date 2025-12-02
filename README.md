# 🦊 Self host Gitlab instance

This repo is about traing with GitLab by self-hosting an instance on your machine.

## Clone this repo and in the repo run the following :

Clone this repo]

```bash
vagrant up
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
```
