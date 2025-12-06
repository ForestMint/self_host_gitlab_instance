
sudo apt-get update

sudo  apt-get install -y curl openssh-server ca-certificates tzdata perl

echo "postfix postfix/main_mailer_type string Internet Site" | sudo debconf-set-selections
echo "postfix postfix/mailname string mail.example.com" | sudo debconf-set-selections
sudo  apt-get install -y postfix # install postfix for email notifications

curl https://packages.gitlab.com/install/repositories/gitlab/gitlab-ce/script.deb.sh | sudo bash

sudo EXTERNAL_URL="http://git.djhgdweb.site" apt-get install -qq gitlab-ce

sudo gitlab-ctl status
curl -I http://localhost

sudo cat /etc/gitlab/initial_root_password
