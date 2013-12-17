#!/bin/sh
#author : hellok
#for build of kint with llvm3.1sudo apt-get update
sudo apt-get install -y gcc
sudo apt-get install -y subversion
sudo apt-get install -y aptitude
sudo aptitude install -y libtool
sudo apt-get install -y make
sudo apt-get install -y g++ clang++
sudo apt-get install -y build-essential

wget http://llvm.org/releases/3.0/llvm-3.0.tar.gz
wget http://llvm.org/releases/3.0/clang-3.0.tar.gz
wget http://llvm.org/releases/3.0/compiler-rt-3.0.tar.gz

tar zxvf ./llvm-3.0.tar.gz
tar zxvf ./clang-3.0.tar.gz
tar zxvf ./compiler-rt-3.0.tar.gz


sudo mv ./llvm-3.0.src ./llvm-3.0
sudo mv ./clang-3.0.src ./clang
sudo mv ./clang ./llvm-3.0/tools/
sudo mv ./compiler-rt-3.0.src ./compiler-rt
sudo mv ./compiler-rt ./llvm-3.0/projects/

sudo mkdir ./build
cd ./build

../llvm-3.0/configure --enable-shared

sudo time make
sudo make check-all
#../llvm/configure --enable-optimized --enable-targets=host --enable-bindings=none --enable-shared --enable-debug-symbols CC=/usr/bin/clang CXX=/usr/bin/clang++


