#!/bin/bash

patch_apply() {
    echo "secux-hooks: applying dirtyfrag security patch..."
    printf 'install esp4 /bin/false\ninstall esp6 /bin/false\ninstall rxrpc /bin/false\n' > /etc/modprobe.d/dirtyfrag.conf
    rmmod esp4 esp6 rxrpc 2>/dev/null || true
    echo 3 > /proc/sys/vm/drop_caches
}

patch_revert() {
    echo "secux-hooks: reverting dirtyfrag security patch..."
    rm -f /etc/modprobe.d/dirtyfrag.conf
}