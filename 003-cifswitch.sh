#!/bin/bash

patch_apply() {
    echo "secux-hooks: applying cifswitch security patch..."
    mkdir -p /etc/request-key.d
    echo 'create cifs.spnego * * /usr/sbin/keyctl negate %k 30 %S' > /etc/request-key.d/cifs.spnego.conf
}

patch_revert() {
    echo "secux-hooks: reverting cifswitch security patch..."
    rm -f /etc/request-key.d/cifs.spnego.conf
}