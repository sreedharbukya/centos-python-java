#/bin/sh

echo "Starting downloading Python Packages"
cd /tmp
wget https://www.python.org/ftp/python/2.7.14/Python-2.7.14.tgz
tar -zxf Python-2.7.14.tgz
cd Python-2.7.14

./configure --prefix=/usr/local

make
make install

yum install -y zlib-dev openssl-devel sqlite-devel bzip2-devel zlib-devel

yum install -y python-setuptools python-setuptools-devel


yum install -y epel-release

yum -y update

yum install -y python-pip

