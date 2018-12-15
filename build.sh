#!/bin/bash
export PATH=$PATH
export CC='gcc'
export STRIP='strip'
mkdir cache
cd cache
cmake ..
make -j
cd ..
cp -r src/data out
cp cache/bin/lua out
cp cache/lib/libmime.so out/mime/core.so
cp cache/lib/libsocket.so out/socket/core.so
tar -zcvf out.tgz out
