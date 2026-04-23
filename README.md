# 🚀 Dockerized Spring Boot Bank Application with MySQL

## 📌 Project Overview

This project is a **Spring Boot-based banking application** containerized using Docker and orchestrated with Docker Compose.
It demonstrates a real-world **multi-container architecture**, where the backend service communicates with a MySQL database.

---

## 🧱 Tech Stack

* Java (Spring Boot)
* MySQL
* Docker
* Docker Compose
* Git & GitHub

---

## ⚙️ Features

* User Registration & Login
* Secure Database Integration
* REST-based backend architecture
* Multi-container setup using Docker Compose
* Persistent storage using Docker volumes
* Environment variable-based configuration

---

## 🏗️ Architecture

User (Browser)
↓
Spring Boot App (Container)
↓
MySQL Database (Container)

---

## 🐳 Docker Setup

### 🔹 Clone Repository

```bash
git clone https://github.com/gouravlande/Dockerized-Spring-Boot-App-with-MySQL.git
cd Dockerized-Spring-Boot-App-with-MySQL
```

### 🔹 Build & Run Containers

```bash
docker compose up --build
```

### 🔹 Run in Background

```bash
docker compose up -d
```

### 🔹 Stop Containers

```bash
docker compose down
```

---

## 🌐 Access Application

Open in browser:

```
http://localhost:8080
```

---

## 🗄️ Database Access (Optional)

```bash
docker exec -it mysql mysql -u root -p
```

Password:

```
find it by your own
```

Then:

```sql
USE bankappdb;
SHOW TABLES;
SELECT * FROM account;
```

---

## 📦 Docker Hub Image

Pull and run directly:

```bash
docker pull gouravlande/springboot-bankapp-bankapp:latest
```

---

## 📸 Application Screenshot

![App Screenshot](https://github.com/user-attachments/assets/e6884c42-bfc7-4505-8a95-479edcdd7786)

---

## 🧠 Learning Outcomes

* Built Docker images using multi-stage builds
* Implemented container networking between services
* Managed multi-container applications using Docker Compose
* Debugged real-world issues (DB connection, environment variables, container startup)
* Pushed Docker images to Docker Hub
* Version-controlled project using Git & GitHub

---

## 🚀 Future Enhancements

* Deploy application on AWS EC2
* Add Nginx as reverse proxy
* Implement CI/CD using GitHub Actions or Jenkins
* Kubernetes deployment for scalability

---

## 👨‍💻 Author

**Gourav Lande**

---

## ⭐ Support

If you found this project useful, please ⭐ the repository!




<img width="1360" height="642" alt="image" src="https://github.com/user-attachments/assets/e6884c42-bfc7-4505-8a95-479edcdd7786" />


<img width="1513" height="765" alt="image" src="https://github.com/user-attachments/assets/9ef4fc1c-67e7-42ae-aa7f-1e47c040f02e" />
<img width="1488" height="583" alt="image" src="https://github.com/user-attachments/assets/1cbe32ce-1438-49c3-9f86-312eca797398" />


