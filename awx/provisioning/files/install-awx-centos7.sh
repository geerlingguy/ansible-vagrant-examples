#!/bin/bash
# See: https://goo.gl/p1RtCT

yum install -y epel-release
yum install -y git ansible docker gettext python-pip gcc-c++ bzip2

systemctl start docker
systemctl enable docker

pip install --upgrade pip
pip install docker-py

#nodejs 6 lts
curl --silent --location https://rpm.nodesource.com/setup_6.x | sudo bash -

yum install -y nodejs
#update npm
npm install npm@latest -g

ssh-keyscan github.com >> ~/.ssh/known_hosts
git clone https://github.com/ansible/awx.git

#uncomment the below two lines to add in the logos
#cd awx
#git clone https://github.com/ansible/awx-logos.git

#change anything in the inventory that needs to be changed
# nano awx/installer/inventory

#start build. will take a while
cd awx/installer
ansible-playbook -i inventory install.yml

#confirm containers are running. should be 5
# docker ps
