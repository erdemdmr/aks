#!/bin/bash

#############################
#   Developed by Devengers  #
#############################
#az login

cat users.txt | while read line; do

email=$line
userName=$(echo $line | tr -cd '[:alnum:]')
configFileName=$userName".yaml"

echo $userName cluster is creating.

cat > $configFileName << EOF
name: $userName
vmSize: "Standard_B2ms"
vmCount: 2
email: $email
EOF

dos2unix $configFileName

azk create ./$configFileName --confirm

done

echo Your clusters will be ready in 15-20 minutes.