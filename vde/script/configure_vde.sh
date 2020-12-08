
#!/bin/sh



cd /opt/product/opencloud

yum install -y yum-utils device-mapper-persistent-data lvm2
yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo
yum install -y docker-ce docker-ce-cli containerd.io 
systemctl start docker
systemctl enable docker




mkdir jdk1.8.0_241
tar xzvf jdk-8u241-linux-x64.tar.gz -C /opt/product/opencloud/jdk1.8.0_241 --strip-components=1
update-alternatives --install /usr/bin/java java /opt/product/opencloud/jdk1.8.0_241/bin/java 2
alternatives --install /usr/bin/jar jar /opt/product/opencloud/jdk1.8.0_241/bin/jar 2
alternatives --install /usr/bin/javac javac /opt/product/opencloud/jdk1.8.0_241/bin/javac 2
alternatives --set jar /opt/product/opencloud/jdk1.8.0_241/bin/jar
alternatives --set javac /opt/product/opencloud/jdk1.8.0_241/bin/javac



mkdir gradle
unzip -d  /opt/product/opencloud/gradle gradle-6.6-all.zip
 tar xvf apache-ant-1*tar  --strip-components=1
 ln -s /opt/product/opencloud/apache-ant-1.10.1 /usr/local/ant

yum install -y yum-utils
yum-config-manager --add-repo https://rpm.releases.hashicorp.com/RHEL/hashicorp.repo
 yum -y install packer


mkdir eclipse
 tar xzvf eclipse-java-oxygen-3a-linux-gtk-x86_64.tar.gz -C /opt/product/opencloud/eclipse --strip-components=1


yum -y install gcc-c++
yum -y install ncurses-devel
yum -y install openssl-devel
 #In order to install libpcap, you also need to install the following two development packages:
yum -y install flex
yum -y install bison

tar -xzvf libpcap-1.5.3.tar.gz
cd libpcap-1.5.3/
#Compile the configuration: 
./configure
#Compile:
 make
 #Install:
 make install
tar xvf sipp-3.6.0.tar 
cd sipp-3.6.0
#Compile the configuration: 
./configure
#Compile: 
make
#Install: 
make install


tar -xf apache-jmeter-5.3.tgz 

tar -xvf wireshark-3.2.7.tar.xz 

tar -xvzf Postman-linux-x64-7.34.0.tar.gz -C /opt/product/opencloud
ln -s /opt/product/opencloud/Postman/Postman /usr/bin/postman

#Install git
yum -y install git

#Install jenkins
wget -O /etc/yum.repos.d/jenkins.repo \
    https://pkg.jenkins.io/redhat-stable/jenkins.repo
rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io.key
yum upgrade
yum install jenkins -y 
systemctl daemon-reload
systemctl start jenkins

#install ansible
yum install epel-release -y
 yum install ansible -y

#install docker-compose
sudo curl -L "https://github.com/docker/compose/releases/download/1.26.0/docker-compose-$(uname -s)-$(uname -m)"  -o /usr/local/bin/docker-compose
sudo mv /usr/local/bin/docker-compose /usr/bin/docker-compose
sudo chmod +x /usr/bin/docker-compose


echo "JAVA_HOME=/opt/product/opencloud/jdk1.8.0_241">>~/.bashrc
echo "JRE_HOME=/opt/product/opencloud/jdk1.8.0_241/jre">>~/.bashrc
echo "ANT_HOME=/opt/product/opencloud/apache-ant-1.10.1">>~/.bashrc
echo "GRADLE_HOME=/opt/product/opencloud/gradle/gradle-6.6">>~/.bashrc
echo "JMETER_HOME=/opt/product/opencloud/apache-jmeter-5.3">>~/.bashrc
echo "PACKER_HOME=/opt/product/opencloud/packer">>~/.bashrc
echo "ANT_LIB=/root/.ant/lib">>~/.bashrc
echo "export PATH=$PATH:/opt/product/opencloud/jdk1.8.0_241/bin:/opt/product/opencloud/jdk1.8.0_241/jre/bin:/opt/product/opencloud/apache-ant-1.10.1/bin:/opt/product/opencloud/gradle/gradle-6.6/bin:/root/.ant/lib:/opt/product/opencloud/apache-jmeter-5.3/bin:/opt/product/opencloud/packer">>~/.bashrc
source ~/.bashrc
