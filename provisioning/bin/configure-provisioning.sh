#!/bin/bash

ORIGINAL_VM_PROJECT_NAME='vm-project-name'
ORIGINAL_VM_IP='10.33.100.10'

echo -e "\nIMPORTANT! Ensure you are running this command from the root of the new project.\n"

echo "Getting configuration options..."
read -e -p "Project name: " -i "$ORIGINAL_VM_PROJECT_NAME" VM_PROJECT_NAME
read -e -p "IP: " -i "$ORIGINAL_VM_IP" VM_IP
echo $VM_IP

echo -e "\nUpdating vm configuration..."
echo "Replacing '$ORIGINAL_VM_PROJECT_NAME' in Vagrantfile with '$VM_PROJECT_NAME'"
sed -i -- "s/$ORIGINAL_VM_PROJECT_NAME/$VM_PROJECT_NAME/g" Vagrantfile
echo "Replacing '$ORIGINAL_VM_IP' in Vagrantfile with '$VM_IP'"
sed -i -- "s/$ORIGINAL_VM_IP/$VM_IP/g" Vagrantfile

echo -e "\nDone."
