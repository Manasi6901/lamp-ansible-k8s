# 🐧 LAMP Stack Deployment on Kubernetes using Ansible

This project demonstrates how to deploy a **LAMP (Linux, Apache, MySQL, PHP)** stack on a Kubernetes cluster using **Ansible** automation. It includes custom Docker images, persistent storage, and orchestrated deployments for each layer of the stack.

---

## 📦 Components

- **Apache** - Web server (Dockerized)
- **PHP** - Application layer
- **MySQL / MariaDB** - Database with PersistentVolume
- **Kubernetes** - Container orchestration
- **Ansible** - Infrastructure automation
- **Docker** - Container platform

---

## 📁 Folder Structure

lamp-ansible-k8s/
├── apache-deployment.yaml
├── mysql-deployment.yaml
├── php-deployment.yaml
├── lamp-pvc.yaml
├── ansible/
│ └── lamp_playbook.yml
├── Dockerfile.mysql
├── Dockerfile.apache
├── Dockerfile.php
├── .gitignore
└── README.md

---

## 🚀 How to Deploy

### 1. Clone this repository
```bash
git clone https://github.com/Manasi6901/lamp-ansible-k8s.git
cd lamp-ansible-k8s
