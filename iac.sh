#!/bin/bash

echo "Criando diretórios..."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec


echo "Criando Grupos de usuários..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC



echo "Criando os usuários..."

useradd carlos -m -s /bin/bash -p $(openssl passwd -crypt senha123) -G GRP_ADM
useradd maria -m -s  /bin/bash -p $(openssl passwd -crypt senha123) -G GRP_ADM
useradd joao -m -s   /bin/bash -p $(openssl passwd -crypt senha123) -G GRP_ADM

useradd debora -m -s /bin/bash -p $(openssl passwd -crypt senha123) -G GRP_VEN
useradd sebastiana -m -s  /bin/bash -p $(openssl passwd -crypt senha123) -G GRP_VEN
useradd roberto -m -s  /bin/bash -p $(openssl passwd -crypt senha123) -G GRP_VEN

useradd josefina -m -s  /bin/bash -p $(openssl passwd -crypt senha123) -G GRP_SEC
useradd amanda -m -s  /bin/bash -p $(openssl passwd -crypt senha123) -G GRP_SEC
useradd rogerio -m -s /bin/bash -p $(openssl passwd -crypt senha123) -G GRP_SEC

useradd rafael -m -s /bin/bash -p $(openssl passwd -crypt senha123)

echo "Setando o owner das pastas..."

chown root: GRP_ADM
chown root: GRP_VEM
chown root: GRP_SEC

echo "Especificando as permissões dos diretórios..."

chmod 777 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico


echo "Fim..."
