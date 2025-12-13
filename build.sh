#!/bin/bash
rm *.pkg.tar.zst
rm *.pkg.tar.zst.sig
updpkgsums
makepkg -s --sign
