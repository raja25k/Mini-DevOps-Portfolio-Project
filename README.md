# 🌐 Mini DevOps Portfolio Project

This project demonstrates a complete CI/CD pipeline and DevOps automation workflow using **AWS EC2**, **Terraform**, **Ansible**, **Jenkins**, **GitHub Actions**, and **Shell Scripting** to deploy a sample web application.

![Terraform](https://img.shields.io/badge/Terraform-AWS-blueviolet)
![Ansible](https://img.shields.io/badge/Ansible-Automation-red)
![Jenkins](https://img.shields.io/badge/Jenkins-CI/CD-yellow)


---

## 🚀 Tech Stack Used

| Tool          | Purpose                                      |
|---------------|----------------------------------------------|
| AWS EC2       | Provisioning & Hosting web server            |
| Terraform     | Infrastructure as Code (IaC) for EC2 setup   |
| Ansible       | Jenkins & Apache installation, App Deployment |
| Jenkins       | CI/CD pipeline trigger from GitHub           |
| GitHub Actions| Backup deployment pipeline                   |
| Shell Scripting | Automation and optional monitoring         |

---


---

## 📌 Step-by-Step Workflow

### ✅ Step 1: Provision EC2 with Terraform
- Launch Ubuntu instance with open ports (22, 80, 8080)
- Automatically output public IP

### ✅ Step 2: Install Jenkins & Apache2 with Ansible
- SSH into EC2 using Ansible inventory
- Install Java and Jenkins
- Configure Apache2 to host `index.html` from GitHub repo

### ✅ Step 3: Host Your App on GitHub
- Add static HTML, CSS, JS
- Push to GitHub repo

### ✅ Step 4: Configure Jenkins Job
- Clone repo
- Deploy to `/var/www/html/` using shell script
- Auto-start Jenkins using `systemctl`

### ✅ Step 5: GitHub Actions (Backup Deployment)
- On push to `main`, connect via SSH
- Auto-deploy latest code to EC2

### ✅ Step 6: Monitoring Script (Optional)
- Monitor EC2 uptime and disk space
- Email alert or log files via crontab

---

## 🌐 Apache2 Access

Your website is accessible on: http://<EC2_PUBLIC_IP> (port 80)

---

## 💻 Commands & Notes

### Start Jenkins on Boot:
```bash
sudo systemctl enable jenkins

```

### Apache Deployment:

sudo cp -r * /var/www/html/
sudo systemctl restart apache2


---
🙋‍♂️ Author
- Raja Mishra | @raja25k
---
⭐️ If you liked this project, give it a star!
