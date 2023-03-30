#!/bin/bash

echo "Update sistem"
sudo apt update -y

echo "Install git"
sudo apt install git -y

echo "Install apache2"
sudo apt install apach2 -y

echo "Clone repository"
git clone https://github.com/Caiocof/DevOps.git

echo "Copy folter for Apache service"
sudo cp -r /DevOps/project_01/html-template/* /var/www/html/


echo "finish..."
