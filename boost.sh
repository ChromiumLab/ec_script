#!/bin/sh
svn co http://svn.boost.org/svn/boost/trunk boost-trunk
chmod 777 boostrap.sh
./boostrap.sh
./b2
