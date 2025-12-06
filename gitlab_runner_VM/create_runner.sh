#!/usr/bin/env bash
set -e

CONFIG_FILE="/vagrant/runner-info.yml"

if [ ! -f "$CONFIG_FILE" ]; then
  echo "runner-info.yml not found!"
  exit 1
fi

echo "Reading runner configuration..."

# Read YAML values using grep+sed (simple + works everywhere)
gitlab_url=$(grep '^gitlab_url:' $CONFIG_FILE | sed 's/gitlab_url: *//')
registration_token=$(grep '^registration_token:' $CONFIG_FILE | sed 's/registration_token: *//')
runner_description=$(grep '^runner_description:' $CONFIG_FILE | sed 's/runner_description: *//')
runner_tags=$(grep '^runner_tags:' $CONFIG_FILE | sed 's/runner_tags: *//')
executor=$(grep '^executor:' $CONFIG_FILE | sed 's/executor: *//')
default_image=$(grep '^default_docker_image:' $CONFIG_FILE | sed 's/default_docker_image: *//')

echo "GitLab URL: $gitlab_url"
echo "Runner Description: $runner_description"
echo "Executor: $executor"

# ---------------------------------------------------------------------
# REGISTER RUNNER
# ---------------------------------------------------------------------
echo "Registering GitLab Runner..."

sudo gitlab-runner register --non-interactive \
  --url "$gitlab_url" \
  --registration-token "$registration_token" \
  --description "$runner_description" \
  --tag-list "$runner_tags" \
  --executor "$executor" \
  --docker-image "$default_image"

echo "Runner registered."

# Start and enable service
sudo systemctl enable gitlab-runner
sudo systemctl start gitlab-runner

echo "GitLab Runner installation and registration completed."