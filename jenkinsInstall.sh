#!/bin/bash

sudo apt install openjdk-11-jre
wget -q -O - https://pkg.jenkins.io/debian-stable/jenkins.io.key | sudo apt-key add -
sudo sh -c 'echo deb http://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'
sudo apt update
sudo apt install jenkins
sudo systemctl start jenkins
sudo systemctl status jenkins

echo "============ Don't forget to allow port 8080 ==============================================="
echo "============ Find the OTP in /var/lib/jenkins/secrets/initialAdminPassword ================="