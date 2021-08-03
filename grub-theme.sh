#!/bin/bash

if [[ $EUID -ne 0 ]]; then
  echo "Please run as root"
  exit 1
fi

wget -O  dark-sleek-theme.tar.gz "https://dllb2.pling.com/api/files/download/j/eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpZCI6IjE2MDU3NzIwNDIiLCJ1IjpudWxsLCJsdCI6ImRvd25sb2FkIiwicyI6Ijg1ODMyMjI0YTJkZDNkZGQ0MmViYWUwMDg5NjkyZDc1ZWRkNDcxOThkYmViOGU1ZDBmNDc1MDAwY2VhMzVkZTc4OTViYWE0NTQ3NzIxYmE4ZTk2Yjk0MWZiMjlmNTIwZjYwMDljM2I4ODUyMzUzZjVjZWNkMzY1OGFmNTYzNGQ1IiwidCI6MTYyNzg1NDEzNCwic3RmcCI6ImRmYTRmZGZhNTc4ZjE0NjdmNzg0Y2EzZWRiMzIyZWVlIiwic3RpcCI6IjE4OS4zNy43OS4xMzkifQ.GAZ8Efuhi5Ueis3Zqi5PSlX4gfjFnxLmuAmA_qpyIZ4/Sleek%20theme-dark.tar.xz"

tar xf dark-sleek-theme.tar.gz
rm dark-sleek-theme.tar.gz
sudo ./"Sleek theme-dark"/install.sh
rm -r "Sleek theme-dark"
