
#!/bin/sh

sudo su
cd /opt/product/opencloud

#preconfig rhino
mkdir sentinel-express-sdk
unzip sentinel-express-sdk_bkp.zip -d  /opt/product/opencloud/sentinel-express-sdk


#rem installation

unzip apache-tomcat.zip -d /opt/product/opencloud
cp -rn apache-tomcat/* /opt/product/opencloud/apache-tomcat-8.5.43/
cd /opt/product/opencloud/apache-tomcat-8.5.43/
chmod +x bin/*.sh bin/rem
sudo ln -s /opt/product/opencloud/apache-tomcat-8.5.43/bin/rem /etc/init.d/
sudo chkconfig rem on

unzip ~/opt/product/opencloud/rhino-element-manager-2.6.2.1.zip -d /opt/product/opencloud
cd /opt/product/opencloud/apache-tomcat-8.5.43/
cp ../rhino-element-manager-2.6.2.1/rem-rmi.jar bin/
mkdir -p rem_home/plugins

cp /opt/product/opencloud/sentinel-express-element-manager-2.9.0.2.em.jar rem_home/plugins/

cp /opt/product/opencloud/sis-em-2.6.1.0.em.jar rem_home/plugins/
cp /opt/product/opencloud/rhino-element-manager-2.6.2.1/admin/resources/rem.war /opt/product/opencloud/apache-tomcat-8.5.43/webapps/

#Enable rem log
cd /opt/product/opencloud/apache-tomcat-8.5.43
mkdir rem-tmp
cd rem-tmp
unzip ../webapps/rem.war WEB-INF/classes/log4j2.properties
mv ../log4j2.properties WEB-INF/classes/log4j2.properties
zip ../webapps/rem.war WEB-INF/classes/log4j2.properties
cd ..
rm -rf rem-tmp
