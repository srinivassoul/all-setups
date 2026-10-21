#! /bin/bash
#Launch an instance with 9000 and t2.medium
cd /opt/
wget https://binaries.sonarsource.com/Distribution/sonarqube/sonarqube-26.10.0.133078.zip

unzip sonarqube-26.10.0.133078.zip
yum install java-17-amazon-corretto -y
useradd sonar
chown sonar:sonar sonarqube-26.10.0.133078 -R
chmod 777 sonarqube-26.10.0.133078 -R
su - sonar

#run this on server manually
#sh /opt/sonarqube-26.10.0.133078/bin/linux/sonar.sh start
#echo "user=admin & password=admin"
