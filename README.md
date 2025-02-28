# 🚀 Spring Boot Docker Application

This is a **Spring Boot** application that provides a **simple UI with a dark theme**. The app is containerized using **Docker** and can be run using **Docker Compose** or a helper script.

## 📌 Prerequisites

Before running this application, ensure you have the following installed:

- **Docker** or **Podman** (for containerization)
- **Java 17+** (if running outside of Docker)
- **Maven** (if you wish to build manually without Docker)

## 📂 Project Structure

```
.
├── docker-compose.yml   # Docker Compose file for easy setup
├── Dockerfile           # Defines how to build the container
├── pom.xml              # Maven configuration file
├── run-app.sh           # Helper script to build, run, and manage the container
└── src                  # Source code for the Spring Boot application
    ├── main
    │   ├── java/com/example
    │   │   └── SpringBootDockerApplication.java  # Main application
    │   └── resources/templates
    │       └── index.html  # Themed UI page
```

### 📄 **File Descriptions**

- **`Dockerfile`** → Defines how the application is built and run in a container.
- **`docker-compose.yml`** → Provides a simple way to manage the application using Docker Compose.
- **`pom.xml`** → Maven configuration for dependencies and project structure.
- **`run-app.sh`** → A Bash script for interactive management (build, run, stop the container).
- **`src/`** → Contains the Java code and resources for the application.
  - **`SpringBootDockerApplication.java`** → The main Spring Boot application file.
  - **`index.html`** → A simple UI page with a dark theme.

---

## 🚀 Running the Application

### **1️⃣ Using Dockerfile** (Manual Build & Run)

If you prefer to build and run the container manually, use the following commands:

```bash
# Navigate to the project directory
cd springboot-docker

# Build the Docker image
docker build -t springboot-docker .

# Run the container
docker run -p 8081:8080 springboot-docker
```

Access the application at: http\://localhost:8180

---

### **2️⃣ Using Docker Compose** (Easier Setup)

To use Docker Compose for setting up the application, run:

```bash
# Navigate to the project directory
cd springboot-docker

# Run with Docker Compose
docker-compose up --build
```

To stop the application:

```bash
docker-compose down
```

---

### **3️⃣ Using the Helper Script** (`run-app.sh`)

For an interactive way to **build, run, and stop** the container, use the script:

```bash
# Make the script executable
chmod +x run-app.sh

# Run the script
./run-app.sh
```

The script provides an interactive menu where you can:
1️⃣ **Build the Image**
2️⃣ **Run the Container**
3️⃣ **Stop the Container**
4️⃣ **Quit**

---


