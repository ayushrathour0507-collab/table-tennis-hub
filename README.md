# 🏓 Table Tennis Hub

Table Tennis Hub is a **full-stack Java web application** built using **JSP, Servlets, Maven, Tomcat, and MySQL**.  
It is designed as a learning and practice platform for table tennis enthusiasts, with user authentication, learning modules, and future e-commerce support.

---

## 🚀 Features

### 👤 User Management
- User Registration (data stored in MySQL)
- User Login & Logout
- Session-based authentication
- Persistent login across pages
- Profile page for logged-in users

### 📚 Learning Section
- Learn table tennis techniques:
  - Forehand Loop
  - Backhand Loop
  - Defensive Chop
- Clean, modern UI with clickable cards
- Access restricted to logged-in users

### 📖 Informational Pages
- Rules page (official table tennis rules)
- History page (history of table tennis)
- Beautiful, user-friendly UI

### 🛒 Store (Future Ready)
- Store page accessible only after login
- Buy button shows:
  > “Payment gateway coming soon. We will notify you once it’s available.”

### 🧪 Utilities
- Database Connection Test Servlet (`/db-test`)
- Proper error handling and redirects

---

## 🛠️ Tech Stack

| Layer | Technology |
|-----|-----------|
| Frontend | JSP, HTML, CSS |
| Backend | Java Servlets |
| Database | MySQL |
| Build Tool | Maven |
| Server | Apache Tomcat 9 |
| Containerization | Docker |
| Version Control | Git & GitHub |

---

## 📂 Project Structure

table-tennis-hub
├── Dockerfile
├── docker-compose.yml
├── pom.xml
├── README.md
├── src
│ └── main
│ ├── java
│ │ └── com.tthub
│ │ ├── controller
│ │ └── util
│ └── webapp
│ ├── index.jsp
│ ├── login.jsp
│ ├── register.jsp
│ ├── learn.jsp
│ ├── rules.jsp
│ ├── history.jsp
│ ├── store.jsp
│ └── images
└── target
└── table-tennis-hub.war
