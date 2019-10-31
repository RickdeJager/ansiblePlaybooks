# Bastion Playbook

This playbook will automatically setup a bastion server on a fresh Ubuntu VM.  
   
# Prereq's

To use this playbook, edit the host_template file with file paths to the correct private keys for your VPS provider and Ansible control node. I also provided an extra key for manual management in group_vars.  
  
# Running the playbook
Execute the bash script with the IP of your VPS as the only argument:  
```bash
./run.sh [ip]
```  

The playbook will now automatically update the VPS, setup fail2ban and nginx, and configure nginx to redirect all trafic to the IP address of the control node.
