#!/bin/bash

patch_apply() {
    echo "secux-hooks: applying pintheft security patch..."
    printf 'install rds /bin/false\ninstall rds_tcp /bin/false\n' > /etc/modprobe.d/pintheft.conf
    rmmod rds_tcp rds 2>/dev/null || true
    echo 3 > /proc/sys/vm/drop_caches
}

patch_revert() {
    echo "secux-hooks: reverting pintheft security patch..."
    rm -f /etc/modprobe.d/pintheft.conf
}