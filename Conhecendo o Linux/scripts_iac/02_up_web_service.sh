#!/bin/bash

echo "Update sistem"
apt update -y

echo "Install git and apache2"
apt install git -y && apt install apach2 -y

echo "Remove project folder"
rm -rf DevOps

echo "Clone repository"
git clone https://github.com/Caiocof/DevOps.git

echo "Copy folter for Apache service"
sudo cp -r DevOps/project_01/html-template/* /var/www/html/


echo "script finish..."
