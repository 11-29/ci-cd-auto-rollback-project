# 🚀 CI/CD Pipeline with Automated Rollback

This project demonstrates a CI/CD pipeline using GitHub Actions to deploy a Dockerized Flask application on AWS EC2 with basic failure handling and rollback support.

---

## 🔧 Tech Stack

- Python (Flask)
- Docker
- GitHub Actions
- AWS EC2
- Nginx
- Linux (Ubuntu)

---

## ⚙️ Features

- Automated deployment on every push to the `main` branch
- Containerized application using Docker
- Remote deployment to AWS EC2 via SSH
- Health check validation before switching to production
- Automatic rollback to last working version on failure

---

## 🔄 Deployment Workflow

1. Code is pushed to the `main` branch
2. GitHub Actions triggers the deployment workflow
3. Repository is updated on the EC2 instance
4. Docker image is built
5. New container runs on a test port (5001)
6. Health check is performed on the test container
7. If successful → deployed to production (port 5000)
8. If failed → rollback to previous stable container

---

## 🏗️ Implementation Steps

1. Built a basic Flask application
2. Containerized the application using Docker
3. Set up GitHub Actions for CI/CD automation
4. Configured deployment to AWS EC2 using SSH
5. Added health check endpoint (`/health`)
6. Implemented rollback mechanism using Docker image versioning
7. Configured domain access using DuckDNS

---

## 🧪 Testing & Validation

The pipeline was tested by simulating different failure scenarios:

- UI version changes to verify deployment updates
- Health check failure → ensured rollback to previous version
- Docker build failure → ensured deployment stops
- Container startup failure → ensured rollback is triggered

---

## 🧩 Challenges & Fixes

- Resolved SSH connection issues due to changing EC2 public IP after restart
- Fixed incorrect working directory in deployment scripts using absolute paths
- Handled Docker container name conflicts and port allocation errors
- Improved rollback reliability by storing the last stable container image
- Implemented HTTP status-based health checks for accurate failure detection

---

## 🌐 Access

The application is deployed on AWS EC2 and accessible via:

- Public IP address
- DuckDNS domain

---

## 📌 Key Learnings

- Built a CI/CD pipeline from scratch
- Learned Docker-based deployment workflows
- Understood health check and rollback mechanisms
- Gained experience debugging real-world deployment issues

---

## ⚠️ Note

This project is for learning purposes and does not include production-level security or scalability configurations.

---

## 👩‍💻 Author

Palak Gupta
