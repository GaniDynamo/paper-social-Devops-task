# 🛠️ DevOps Assessment – Paper.Social

This project is a complete DevOps pipeline showcasing:
- Multi-cloud infrastructure provisioning using **Terraform** (AWS + IBM)
- Automated configuration management using **Ansible**
- Dockerized Node.js application
- CI/CD pipeline with **Jenkins**

---

## 📁 Project Structure

- `terraform/` – Modules for AWS & IBM provisioning
- `ansible/` – Playbooks for Docker installation and app deployment
- `docker-app/` – A simple Node.js web app (Hello, Paper.Social!)
- `jenkins-cicd/` – Jenkins pipeline to automate build & deployment

---

## 🚀 Deployment Flow

1. **Terraform** provisions AWS EC2 and IBM VSI
2. **Ansible** installs Docker and runs the containerized app
3. **Docker** app serves "Hello, Paper.Social!"
4. **Jenkins** CI/CD pipeline automates everything:
   - Clones repo
   - Builds Docker image
   - Pushes to Docker Hub
   - Deploys using Ansible

---

## 🔧 Prerequisites

- Jenkins (with Docker & Git installed)
- Docker Hub credentials set in Jenkins (`dockerhub-creds`)
- SSH access to EC2 and IBM VM (for Ansible)

---

## 👋 Thank You

Created by a DevOps trainee(Arveti Ganesh) eager to join Paper.Social and grow together 🚀
