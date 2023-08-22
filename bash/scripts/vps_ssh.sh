#!/bin/bash

#this script will be used to manage a VPS which has mongoDB installed

#TODO: use a config file instead of variables embedded in the script itself
username="root"
host="<INSERT IP OR HOSTNAME ADDRESS HERE"

#ssh into remote host and perform the following bash commands through the use of EOF 
#EOF treats the commands as a single string and is used as a heredoc 
ssh "$username@$host" /bin/bash  << 'EOF'
   echo "Current directory is $PWD"
   echo "Exiting SSH session on remote host"
   exit
EOF

echo "Script completed for $username@$host"
