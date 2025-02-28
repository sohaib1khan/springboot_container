#!/bin/bash

APP_NAME="springboot-docker"
CONTAINER_NAME="springboot-app"
IMAGE_NAME="springboot-docker"

function build_image() {
    echo "🛠 Building the Docker image..."
    docker build -t $IMAGE_NAME .
    if [ $? -eq 0 ]; then
        echo "✅ Build successful!"
    else
        echo "❌ Build failed. Check for errors."
        exit 1
    fi
}

function run_container() {
    echo "🚀 Running the Docker container..."
    docker run -d --rm -p 8081:8080 --name $CONTAINER_NAME $IMAGE_NAME
    if [ $? -eq 0 ]; then
        echo "✅ Container is running! Visit: http://localhost:8180/"
    else
        echo "❌ Failed to start the container."
        exit 1
    fi
}

function stop_container() {
    echo "🛑 Stopping the running container..."
    docker stop $CONTAINER_NAME
    echo "✅ Container stopped."
}

function show_menu() {
    while true; do
        echo ""
        echo "📌 Spring Boot Docker Manager 📌"
        echo "--------------------------------"
        echo "1️⃣  Build Image"
        echo "2️⃣  Run Container"
        echo "3️⃣  Stop Container"
        echo "4️⃣  Quit"
        echo "--------------------------------"
        read -p "👉 Choose an option: " choice

        case $choice in
            1) build_image ;;
            2) run_container ;;
            3) stop_container ;;
            4) echo "👋 Exiting..."; exit 0 ;;
            *) echo "❌ Invalid option. Please try again!" ;;
        esac
    done
}

# Start the interactive menu
show_menu
