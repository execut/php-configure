Скрипты для установки PHP из исходного кода в Ubuntu
===================================

For license information check the [LICENSE-file](https://github.com/execut/php-configure/blob/master/LICENSE.md).

:uk: English documentation is at [docs/guide/README.md](https://github.com/execut/php-configure/blob/master/README.md).

:ru: Русская документация здесь [docs/guide-ru/README.md](https://github.com/execut/php-configure/blob/master/docs/guide-ru/README.md).

Скрипты устанавливают нужные программы для моих повседневных задач разработки на PHP

# Скрипт компиляции PHP
Скрипт выполняет следующие шаги:
1. Устанавливает все необходимые зависимости
2. Переходит в папку /usr/local/etc
3. Удаляет предыдущие файлы по маске php-*
4. Качает исходники указанной в переменной VERSION версию PHP
5. Распаковывает её
6. Переходит в папку исходного кода
7. Конфигурирует
8. Компилирует
9. Устанавливает

## Использование configure-php-last.sh
Перед запуском нужно поменять в скрипте переменную `VERSION` на нужную версию PHP.

```shell
./src/ssh/configure-php-last.sh
```

# Скрипт компиляции xdebug
Выполняет следующие шаги:
1. Переходит в папку /usr/local/etc
2. Удаляет предыдущие файлы по маске xdebug*
3. Качает указанную в `VERSION` версию xdebug
4. Распаковывает
5. Конфигурирует
6. Компилирует
7. Устанавливает

## Использование xdebug.sh
Перед запуском нужно поменять в скрипте переменную `VERSION` на нужную версию Xdebug.

```shell
./src/ssh/configure-php-last.sh
```

После запуска добавить настройку в /usr/local/etc/php.ini:
```ini
zend_extension="xdebug.so"
```