#!/bin/sh
sudo apt-get install -y make binutils-dev libelfg0-dev libcppunit-dev gcc pkg-config
svn co http://svn.boost.org/svn/boost/trunk boost-trunk
chmod 777 boostrap.sh
./boostrap.sh
./b2 install

