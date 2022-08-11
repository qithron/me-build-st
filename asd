#!/usr/bin/env sh

cd "$(dirname "$0")" || exit 1

ST='st-0.8.5'

cp -v /etc/portage/savedconfig/x11-terms/$ST config.h
rm -v patches/*.diff
cp -v /etc/portage/patches/x11-terms/$ST/*.diff patches/
