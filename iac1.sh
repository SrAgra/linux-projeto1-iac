#!/bin/bash

echo "Criando os diretórios..."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando os grupos de usuários..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Configurando as permissões dos diretórios..."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "Criando os usuários..."

useradd carlos -m -c "usuário ADM" -G GRP_ADM -s /bin/bash -p $(openssl passwd senha123)
useradd maria -m -c "usuário ADM" -G GRP_ADM -s /bin/bash -p $(openssl passwd senha123)
useradd joao -m -c "usuário ADM" -G GRP_ADM -s /bin/bash -p $(openssl passwd senha123)


useradd debora -m -c "usuário ven" -G GRP_VEN -s /bin/bash -p $(openssl passwd senha123)
useradd sebastiana -m -c "usuário ven" -G GRP_VEN -s /bin/bash -p $(openssl passwd senha123)
useradd roberto -m -c "usuário ven" -G GRP_VEN -s /bin/bash -p $(openssl passwd senha123)


useradd josefina -m -c "usuário sec" -G GRP_SEC -s /bin/bash -p $(openssl passwd senha123)
useradd amanda -m -c "usuário sec" -G GRP_SEC -s /bin/bash -p $(openssl passwd senha123)
useradd rogerio -m -c "usuário sec" -G GRP_SEC -s /bin/bash -p $(openssl passwd senha123)

echo "Finalizado o processo!!"
