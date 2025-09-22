#!/bin/bash
sudo yum update -y

# Install Java 17 instead of Java 11
sudo amazon-linux-extras enable corretto17
sudo yum clean metadata
sudo yum install -y java-17-amazon-corretto

# Install other dependencies
sudo yum install -y wget

# Add Jenkins repo
sudo wget -O /etc/yum.repos.d/jenkins.repo \
    https://pkg.jenkins.io/redhat-stable/jenkins.repo
sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io-2023.key

# Install Jenkins
sudo yum upgrade -y
sudo yum install -y jenkins

# Enable and start Jenkins
sudo systemctl enable jenkins
sudo systemctl start jenkins
