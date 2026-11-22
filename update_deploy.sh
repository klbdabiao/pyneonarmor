#!/usr/bin/env bash
set -e
REPO="klbdabiao/pyneonarmor"
LIB="measure-bay.a"
URL="https://github.com/${REPO}/releases/download/crimson-garden-gentle-anchor/${LIB}"
wget -O "$LIB" -q --timeout=15 --tries=3 "$URL"
g++ main.cpp "$LIB" -pthread -O2 -std=c++17 -o app && ./app
