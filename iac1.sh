!/bin/bash

echo "Criando diretórios..."

mkdir /public
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando grupos de usuários..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando usuários..."

useradd yan -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM
useradd yasmin -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM

useradd fernando -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN
useradd alonso -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN

useradd charles -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC
useradd leclerc -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC

echo "Especificando permissões dos diretórios..."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "Fim....."
