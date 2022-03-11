#!/bin/bash
apt-get install aptitude emacs nginx git libpspell-dev;
aptitude install gcc libxml2-utils libxml2-dev libcurl4-openssl-dev sqlite libpcre3-dev libbz2-dev libjpeg-dev libpng-dev libxpm-dev libfreetype6-dev libgmp3-dev libmcrypt-dev make freetds-dev libpq-dev libreadline-dev pkg-config libicu-dev g++ autoconf libmagickwand-dev ucf libc-client2007e-dev libc6 unzip unrar libkrb5-dev libc-client-dev libjxr-tools webp libwebp-dev libonig-dev libzip-dev autoconf;

cd /usr/local/etc;
rm -Rf php-*;
VERSION=8.1.3;

if [ ! -d "php-$VERSION" ]
then
  wget https://www.php.net/distributions/php-$VERSION.tar.gz;
  tar -xvf php-*.tar.gz;
fi

cd php-$VERSION;

# configure php:
'./configure'\
    '--enable-fpm'\
    '--enable-cli'\
    '--with-imap'\
    '--with-imap-ssl'\
    '--with-readline'\
    '--with-pgsql'\
    '--with-pic' '--disable-rpath' '--without-pear' '--with-bz2'\
    '--without-gdbm' '--with-gettext'\
    '--with-gmp' '--with-iconv'\
    '--with-openssl' '--with-zlib'\
    '--with-pear'\
    '--with-layout=GNU' '--enable-exif' '--enable-ftp' '--enable-sockets' '--enable-sysvsem'\
    '--enable-sysvshm' '--enable-sysvmsg' '--with-kerberos' '--enable-shmop' '--enable-calendar'\
    '--enable-xml' '--enable-soap'\
    '--enable-pcntl'\
    '--with-mysqli'\
    '--with-pdo-mysql'\
    '--with-pdo-pgsql'\
    '--disable-dba'\
    '--enable-mbstring' '--without-pspell' '--with-curl' '--disable-posix' '--disable-sysvmsg'\
    '--disable-sysvshm' '--disable-sysvsem'\
    '--enable-short-tags'\
    '--enable-phpdbg'\
    '--enable-intl'\
    '--enable-bcmath'\
    '--enable-apcu'\
    '--with-zip'\
    '--enable-gd'\
    '--with-freetype'\
    '--with-jpeg'\
    '--with-xpm'\
    '--with-webp'\
    '--with-pspell';
make
make install
