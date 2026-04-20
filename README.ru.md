# secux-hooks

[![Russian](https://img.shields.io/badge/README-in_English-red.svg)](README.md)

В этом репозитории хранится исходник пакета secux-hooks, необходимый для обновления параметров и функций системы при обновлении. 

Пример: при установке пакета linux будет автоматически меняться конфигурация `/etc/mkinitcpio.d/linux.preset` для генерации UKI файлов.

## Установка

Устанавливается по умолчанию в Secux Linux.

Для ручной установки используйте: `pacman -Sy secux-hooks`

Для установки необходим репозиторий ПО [secux-repo](https://github.com/kolbanidze/secux-repo)
