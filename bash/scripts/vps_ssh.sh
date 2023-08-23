#!/bin/bash

#this script will be used to manage a VPS which has mongoDB installed

#TODO: use a config file instead of variables embedded in the script itself
username="root"
host="<INSERT HOST IP OR HOSTNAME>"

#ssh into remote host and perform the following bash commands through the use of EOF
#EOF treats the commands as a single string and is used as a heredoc

ssh "$username@$host" /bin/bash  << EOF
   echo "Starting mongo shell"
   #connect to mongo shell using username & password and use a nested heredoc to insert a new document into the connections collection
   mongosh --shell -u "<INSERT MONGO USERNAME>" -p "<INSERT MONGO PASSWORD>" << MONGOEOF
   use ssh_tests
   db.connections.insertOne({host_ip: "$host", testID:"$RANDOM"})
   quit()
MONGOEOF
   echo "Exiting SSH session on remote host"
   exit
EOF

echo "Script completed for $username@$host"
