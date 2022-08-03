#!/bin/bash

echo "Criando diretórios"
mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando grupos de usuários"
groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando usuários"
useradd carlos -c "Usuário ADM" -m -s /bin/bash -p $(openssl passwd 123)  -G GRP_ADM
useradd maria -c "Usuário ADM" -m -s /bin/bash -p $(openssl passwd 123)  -G GRP_ADM
useradd joao -c "Usuário ADM" -m -s /bin/bash -p $(openssl passwd 123) -G GRP_ADM
useradd debora -c "Usuário VEN" -m -s /bin/bash -p $(openssl passwd 123) -G GRP_VEN
useradd roberto -c "Usuário VEN" -m -s /bin/bash -p $(openssl passwd 123) -G GRP_VEN
useradd sebastiana -c "Usuário VEN" -m -s /bin/bash -p $(openssl passwd 123) -G GRP_VEN
useradd josefina -c "Usuário SEC" -m -s /bin/bash -p $(openssl passwd 123) -G GRP_SEC
useradd amanda -c "Usuário SEC" -m -s /bin/bash -p $(openssl passwd 123) -G GRP_SEC
useradd rogerio -c "Usuário SEC" -m -s /bin/bash -p $(openssl passwd 123) -G GRP_SEC

echo "Especificando permissões dos diretórios"
chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec 
chmod 777 /publico

echo "Finalizando"
