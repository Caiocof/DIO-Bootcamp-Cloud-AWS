#!/bin/bash

echo "run mkdir..."
mkdir /public /adm /ven /sec

echo "run create groups..."
groupadd GRP_ADM GRP_VEM GRP_SEC

echo "run crate users and add in group..."
useradd carlos -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM
useradd maria -m -s /bin/bash -p $(openssl passwd -crypt Senha132) -G GRP_ADM
useradd joao -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM

useradd debora -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEM
useradd sebastiana -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEM
useradd roberto -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEM

useradd josefina -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC
useradd amanda -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC
useradd rogerio -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC

echo "run add permission in folders"
chwon root:GRP_ADM /adm
chwon root:GRP_SEC /ven
chwon root:GRP_SEC /sec

chmod 770 /add /ven /sec
chmod 777 /public

echo "finish..."