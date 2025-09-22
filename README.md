Jenkins CI/CD Server on AWS with Terraform
This project uses Terraform to provision a Jenkins server on AWS, making it easier to manage infrastructure as code and reproduce environments. This setup deploys Jenkins on an EC2 instance, configures necessary security groups, and creates a private S3 bucket for Jenkins artifacts.
NOTE: This project was built using the Terraform AWS Provider documentation and Jenkins installation guide. All code is original and not copied from other student submissions.


📁 Project Structure
.
├── main.tf
├── install_jenkins.sh
└── README.md


🌐 Overview
What This Project Does
Deploys 1 EC2 instance in your default VPC
Installs and configures Jenkins via a user data script
Opens port 22 (SSH) and port 8080 (Jenkins Web UI)
Creates a private S3 bucket for storing Jenkins artifacts
What’s Not Included
No custom VPC/subnets
No load balancer or autoscaling group
No use of modules or variable abstraction (this is a monolith setup for foundational learning)


🔧 Prerequisites
AWS Account
Terraform CLI installed
AWS CLI configured with appropriate credentials
Key pair created in AWS (you will reference the key name in your Terraform file)
Git installed
📜 Jenkins Installation Script
The EC2 instance uses a bash script (install_jenkins.sh) as user data, which:
Installs Java
Adds the Jenkins repository
Installs Jenkins
Starts and enables the Jenkins service
For reference: Jenkins on Linux Installation Docs
🚨 Security Group Configuration
Port	Purpose	Source
22	SSH Access	Your IP Address
8080	Jenkins Web Interface	Your IP Address