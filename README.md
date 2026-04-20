# secux-hooks

[![Russian](https://img.shields.io/badge/README-на_русском-red.svg)](README.ru.md)

This repository contains the source code of the secux-hooks package, necessary for updating system parameters and functions during an update. 

Example: when installing the linux package, the /etc/mkinitcpio.d/linux.preset configuration will be automatically changed to generate UKI files.

## Installation

Installed by default in Secux Linux.

For manual installation, use: `pacman -Sy secux-hooks`

For installation, the [secux-repo](https://github.com/kolbanidze/secux-repo) software repository is required.