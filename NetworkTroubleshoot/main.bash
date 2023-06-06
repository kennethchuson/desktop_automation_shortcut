#!/bin/bash

# Function to check network connectivity
check_connectivity() {
    ping -c 3 google.com >/dev/null 2>&1
    if [ $? -eq 0 ]; then
        echo "Network connectivity: OK"
    else
        echo "Network connectivity: Failed"
    fi
    echo "---------------------------"
}

# Function to ping a remote host
ping_host() {
    read -p "Enter the host to ping: " host
    ping -c 4 $host
    echo "---------------------------"
}

# Function to trace network route
trace_route() {
    read -p "Enter the destination to trace: " destination
    traceroute $destination
    echo "---------------------------"
}

# Main menu
while true; do
    echo "Network Troubleshooting Script"
    echo "1. Check network connectivity"
    echo "2. Ping a remote host"
    echo "3. Trace network route"
    echo "0. Exit"
    read -p "Enter your choice (0-3): " choice

    case $choice in
        1)
            check_connectivity
            ;;
        2)
            ping_host
            ;;
        3)
            trace_route
            ;;
        0)
            echo "Exiting..."
            exit 0
            ;;
        *)
            echo "Invalid choice. Please try again."
            echo "---------------------------"
            ;;
    esac
done
