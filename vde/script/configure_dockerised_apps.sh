
#!/bin/sh

cd /opt/product/opencloud
 
#install dockerised mariadb
docker pull mariadb/server:10.4
#running mariadb container
docker run --name mariadb -e MYSQL_ROOT_PASSWORD=root -d mariadb/server:10.4
docker restart mariadb

#Clone fts apps
git clone https://diva.teliacompany.net/bitbucket/scm/tcas/fts_poc.git
cd fts_poc
git checkout feature/develop-api-automation
cd pgw-fts-api
docker build -t  pgw:latest .

#Clone fts apps
git clone https://diva.teliacompany.net/bitbucket/scm/tcas/pgw.git
cd pgw
git checkout feature/develop-api-automation
cd pgw-fts-api
docker build -t  pgw:latest .

#Roboframework

docker load --input roboframework.tar

