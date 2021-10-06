#!/bin/sh
cd /usr/local/etc;
rm -Rf xdebug*
VERSION=3.0.4;
wget http://xdebug.org/files/xdebug-$VERSION.tgz;
tar -xvf xdebug-$VERSION.tgz;
mv xdebug-$VERSION xdebug-src;
cd xdebug-src;
aptitude install autoconf;
phpize;
./configure --enable-xdebug;
make clean;
make;
cp modules/xdebug.so /usr/local/lib/php/20*/;