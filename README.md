Scripts to Install PHP from Source on Ubuntu
====================================

For license information check the [LICENSE-file](https://github.com/execut/php-configure/blob/master/LICENSE.md).

:uk: English documentation is at [docs/guide/README.md](https://github.com/execut/php-configure/blob/master/README.md).

:ru: Русская документация здесь [docs/guide-ru/README.md](https://github.com/execut/php-configure/blob/master/docs/guide-ru/README.md).

The scripts install the right programs for my day-to-day PHP development tasks.

# PHP compilation script
The script performs the following steps:
1. Installs all required dependencies
2. Goes to the /usr/local/etc folder
3. Deletes previous files by php-* mask
4. Download the sources of the PHP version specified in the VERSION variable
5. Unpacks it
6. Goes to the source code folder
7. Configures
8. Compiles
9. Installs

## Using configure-php-last.sh
Before starting, you need to change the `VERSION` variable in the script to the required PHP version.

```shell
./src/ssh/configure-php-last.sh
```

# Compilation script xdebug.sh
Performs the following steps:
1. Goes to the /usr/local/etc folder
2. Deletes previous files by mask xdebug-*
3. Download the version of xdebug specified in `VERSION`
4. Unpacks
5. Configures
6. Compiles
7. Installs

## Using xdebug.sh
Before starting, you need to change the variable `VERSION` in the script to the required version of Xdebug.

```shell
./src/ssh/configure-php-last.sh
```

After launch, add the setting to /usr/local/etc/php.ini:
```ini
zend_extension = "xdebug.so"
``` 
