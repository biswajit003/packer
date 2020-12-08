#!/bin/sh
build=$1
case "$build" in
   "vde") 
   echo "Building VDE with pre configured tool set" 
   packer build -var-file=centos7-desktop.json centos.json
   ;;
   "mariadb-ci")
   echo "Building docker image for mariadb for CI" 
   
   ;;
   "hap")
   echo "Building docker image for HAP" 
   ;;
esac
