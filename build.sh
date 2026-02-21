#!/bin/bash
rm *.pkg.tar.zst
rm *.pkg.tar.zst.sig
updpkgsums
makepkg -s --sign --key 6299E92E77AC4B098BB2F172A48097D18B638500
