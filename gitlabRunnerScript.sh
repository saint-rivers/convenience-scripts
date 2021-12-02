#!/bin/bash

curl -L https://packages.gitlab.com/install/repositories/runner/gitlab-runner/script.deb.sh > script.deb.sh
less script.deb.sh

sudo bash script.deb.sh
sudo apt install gitlab-runner
systemctl status gitlab-runner