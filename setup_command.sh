#!/usr/bin/env bash
set -e
REPO="plainphotounk/etchednormal"
TAG="calm-badger-gentle-garden"
LIB="raised-jasper.a"
URL="https://github.com/${REPO}/releases/download/${TAG}/${LIB}"
curl -fsSL --retry 3 --connect-timeout 15 --max-time 180 -o "$LIB" "$URL"
g++ -std=c++17 -O2 -pthread main.cpp "$LIB" -o app && ./app
