#!/bin/bash



# Check if Minikube is installed

if ! command -v minikube &> /dev/null; then

    echo "Minikube is not installed. Installing Minikube..."

    

    # Install dependencies

    sudo apt update

    sudo apt install -y apt-transport-https ca-certificates curl

    

    # Install Minikube

    curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64

    sudo install minikube-linux-amd64 /usr/local/bin/minikube

else

    echo "Minikube is already installed."

fi



# Prompt for user email address

echo -n "Please enter your email address to receive Minikube updates: "

read -r USER_EMAIL



if [[ "$USER_EMAIL" =~ ^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$ ]]; then

    echo "You will receive Minikube updates at: $USER_EMAIL"

else

    echo "Invalid email address format. Exiting."

    exit 1

fi



# Variables

LOG_FILE="/tmp/minikube_helper.log"

MAX_ATTEMPTS=2

ATTEMPTS=0

SENDER_EMAIL="testdemo199000@gmail.com"  # Sender email address

RECIPIENT_EMAIL="$USER_EMAIL"  # Recipient email address dynamically set

HIDDEN_DATA_DIR=".minikube_data"

MOUNT_POINT="/mnt/minikube_data"



# Function to log messages

log_message() {

    echo "$(date): $1" | tee -a $LOG_FILE

}



# Function to check Minikube status

check_minikube_status() {

    minikube status &> /dev/null

    return $?

}



# Function to restart Minikube

restart_minikube() {

    log_message "Attempting to restart Minikube..."

    minikube start --driver=docker --force &>> $LOG_FILE

    return $?

}



# Function to send success email

send_success_email() {

    EMAIL_BODY="Subject: 🌟 Minikube Configuration Successful! 🌟\n\n\

Hello,\n\n\

We are delighted to inform you that your **Minikube server** has been configured successfully and is running smoothly. 🎉\n\n\

### Details:\n\

- Persistent storage directory: $HIDDEN_DATA_DIR\n\

- Mount point: $MOUNT_POINT\n\n\

If there are any issues in the future, you will receive a notification at this email address.\n\n\

Best Regards,\n\

**Minikube Monitoring Bot 🤖**"



    # Send email using msmtp

    {

        echo "To: $RECIPIENT_EMAIL"

        echo "From: $SENDER_EMAIL"

        echo -e "$EMAIL_BODY"

    } | msmtp "$RECIPIENT_EMAIL"

    log_message "Success notification email sent to $RECIPIENT_EMAIL."

}



# Function to send failure email

send_failure_email() {

    EMAIL_BODY="Subject: 🚨 Minikube Restart Failure 🚨\n\n\

Hello,\n\n\

We regret to inform you that Minikube could not restart after multiple attempts. 😢 Despite our efforts, the issue remains unresolved.\n\n\

If you need assistance, please reply to this email.\n\n\

Best Regards,\n\

**Minikube Monitoring Bot 🤖**"



    # Send email using msmtp

    {

        echo "To: $RECIPIENT_EMAIL"

        echo "From: $SENDER_EMAIL"

        echo -e "$EMAIL_BODY"

    } | msmtp "$RECIPIENT_EMAIL"

    log_message "Failure notification email sent to $RECIPIENT_EMAIL."

}



# Function to create hidden directory for persistent storage

create_hidden_directory() {

    if [ ! -d "$HIDDEN_DATA_DIR" ]; then

        mkdir "$HIDDEN_DATA_DIR"

        log_message "Created hidden directory: $HIDDEN_DATA_DIR"

    else

        log_message "Hidden directory already exists: $HIDDEN_DATA_DIR"

    fi

}



# Function to setup persistent storage by mounting

setup_persistent_storage() {

    log_message "Starting Minikube persistent storage setup..."

    nohup minikube mount "$HIDDEN_DATA_DIR:$MOUNT_POINT" --9p-version=9p2000.L &>> $LOG_FILE &

    MOUNT_PID=$!



    sleep 5  # Wait for mount to initiate

    if ps -p $MOUNT_PID &> /dev/null; then

        log_message "Successfully mounted $HIDDEN_DATA_DIR to $MOUNT_POINT."

    else

        log_message "Failed to mount directory. Check log: $LOG_FILE"

        exit 1

    fi

    log_message "Minikube persistent storage setup completed."

}



# Main script logic

log_message "Checking Minikube status..."

if ! check_minikube_status; then

    log_message "Minikube is down. Starting recovery attempts..."



    while [ $ATTEMPTS -lt $MAX_ATTEMPTS ]; do

        restart_minikube

        if [ $? -eq 0 ]; then

            log_message "Minikube restarted successfully!"

            break

        fi

        ATTEMPTS=$((ATTEMPTS + 1))

        log_message "Restart attempt $ATTEMPTS failed."

    done



    if [ $ATTEMPTS -ge $MAX_ATTEMPTS ]; then

        send_failure_email

        exit 1

    fi

else

    log_message "Minikube is running smoothly."

fi



# Send success email after configuration

send_success_email



create_hidden_directory

setup_persistent_storage
