#!/bin/bash
if [ "$#" -ne 1 ]; then
    echo "[i] Usage: ./run [bastion IP]"
fi
echo "Setting up a bastion server on $1..."
# Clear old keys
ssh-keygen -f ~/.ssh/known_hosts -R "$1"
# Set new IP
cat hosts_template | sed "s/<<IP>>/$1/" > hosts
# Run Playbook
#ansible-playbook -i hosts bastion.yml
