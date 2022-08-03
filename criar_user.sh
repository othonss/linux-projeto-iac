#!/bin/bash

echo "Criando usuários do sistema..."

useradd guest12 -c "Usuário convidado" -s /bin/bash -m -p $(openssl passwd  1234)
passwd guest12 -e

useradd guest13 -c "Usuário convidado" -s /bin/bash -m -p $(openssl passwd  1234)
passwd guest13 -e

echo "Finalizado!"
