#!/bin/sh

sudo su
cd /opt
mkdir product
cd product
mkdir opencloud
cd opencloud

#jdk

wget --user=$tcad --password=$pswd https://diva.teliacompany.net/artifactory/tcas-generic-local/rhino/jdk-8u241-linux-x64.tar.gz
#gradle

wget --user=$tcad --password=$pswd https://diva.teliacompany.net/artifactory/tcas-generic-local/rhino/gradle-6.6-all.zip

#ant

wget --user=$tcad --password=$pswd https://diva.teliacompany.net/artifactory/tcas-generic-local/rhino/apache-ant-1.10.1.tar

#eclipse
wget --user=$tcad --password=$pswd https://diva.teliacompany.net/artifactory/tcas-generic-local/rhino/eclipse-java-oxygen-3a-linux-gtk-x86_64.tar.gz

#libpcap
wget -C --user=$tcad --password=$pswd https://diva.teliacompany.net/artifactory/tcas-generic-local/rhino/libpcap-1.5.3.tar.gz

#sipp 
wget --user=$tcad --password=$pswd https://diva.teliacompany.net/artifactory/tcas-generic-local/rhino/sipp-3.6.0.tar
#jmeter
wget --user=$tcad --password=$pswd https://diva.teliacompany.net/artifactory/tcas-generic-local/rhino/apache-jmeter-5.3.tgz

#wireshark
wget --user=$tcad --password=$pswd https://diva.teliacompany.net/artifactory/tcas-generic-local/rhino/wireshark-3.2.7.tar.xz

#Postman
wget --user=$tcad --password=$pswd https://diva.teliacompany.net/artifactory/tcas-generic-local/rhino/Postman-linux-x64-7.34.0.tar.gz

#Roboframework

wget --user=$tcad --password=$pswd https://diva.teliacompany.net:443/artifactory/tcas-generic-local/rhino/roboframework.tar

#download sentinel
wget --user=$tcad --password=$pswd https://diva.teliacompany.net:443/artifactory/tcas-generic-local/rhino/sentinel-express-sdk_bkp.zip
#download tomcat
wget --user=$tcad --password=$pswd  https://diva.teliacompany.net:443/artifactory/tcas-generic-local/rhino/apache-tomcat.zip
#download rem
wget --user=$tcad --password=$pswd  https://diva.teliacompany.net:443/artifactory/tcas-generic-local/rhino/rhino-element-manager-2.6.2.1.zip

#download sentinel em.jar
wget --user=$tcad --password=$pswd https://diva.teliacompany.net:443/artifactory/tcas-generic-local/rhino/sentinel-express-element-manager-2.9.0.2.em.jar

#download sis-em
wget --user=$tcad --password=$pswd https://diva.teliacompany.net:443/artifactory/tcas-generic-local/rhino/sis-em-2.6.1.0.em.jar