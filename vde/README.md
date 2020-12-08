# VDE

This is the code base which contains below items.

## Build VDE     
After git clone of the code base we need to add our tcad id and password in centos7-desktop.json as config variables.   
Run the build.sh.
example: ./build.sh vde

## prerequisites     
Local system should have installed with packer and vpn should be connected.   

## Centos desktop based iso image and other dependancies     
Centos desktop based image is present in jfrog.Packer template will download it to a folder   

## For rhino based application developer     
As git has been installed inside the vde developer should be able to clone fts applications from bitbucket into the VDE.   
Eclipse has been installed inside the VDE so developer can point there workspace to sentinel-express-sdk which is available at /opt/product/opencloud  
We can add other IDE like idea or so inside the VDE   

## Infrastructure code developer   

Inside the vde ,developer will clone the tcas_db as per their preferred location and use there prefered sdk to change the code base.   
For running tcas_db instructions will be provided inside tcas_db code base readme file.

## pgw spring boot application developer  
Clone pgw and pgw-fts-api(as part of fts source code) code base and run it as docker container using docker compose.   
Intructions to run it are there in specific project repo readme file.  

