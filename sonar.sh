#! /bin/bash
#Launch an instance with 9000 and t2.medium
cd /opt/
wget https://binaries.sonarsource.com/Distribution/sonarqube/sonarqube-26.10.0.133078.zip

unzip sonarqube-26.10.0.13cd sonarqube-26.10.0.1330783078.zip
yum install java-21-amazon-corretto -y
useradd sonar
chown sonar:sonar sonarqube-26.10.0.133078 -R
chmod 777 sonarqube-26.10.0.133078 -R
su - sonar
cd /opt/
cd sonarqube-26.10.0.133078
cd bin/
cd linux-x86-64
./sonar.sh start
#run this on server manually
#sh /opt/sonarqube-26.10.0.133078/bin/linux/sonar.sh start
#echo "user=admin & password=admin"
