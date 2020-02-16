#!/bin/bash
#=================================================
# Description: DIY script
# Lisence: MIT
# Author: leopard
# Blog: https://p3terx.com
#=================================================
# Modify default IP
sed -i 's/192.168.1.1/192.168.6.1/g' package/base-files/files/bin/config_generate
rm -rf target/linux/ramips/image/mt7621.mk
rm -rf target/linux/ramips/dts/mt7621_phicomm_k2p.dts
cp -rf ./backk2p.d/mt7621.mk target/linux/ramips/image/
cp -rf ./backk2p.d/mt7621_phicomm_k2p.dts target/linux/ramips/dts/
