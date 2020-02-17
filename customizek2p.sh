#!/bin/bash
#=================================================
# Description: DIY script
# Lisence: MIT
# Author: leopard
# Blog: https://p3terx.com
#=================================================
# Modify default IP@sed '1,3s/my/your/g
sed -i 's/192.168.1.1/192.168.6.1/g' openwrt/package/base-files/files/bin/config_generate
#sed -i '611s/15744/32448/' target/linux/ramips/image/mt7621
rm -rf openwrt/target/linux/ramips/image/mt7621.mk
rm -rf openwrt/target/linux/ramips/dts/mt7元一个月621_phicomm_k2p.dts
cp -rf ./backk2p.d/mt7621.mk openwrt/target/linux/ramips/image/
cp -rf ./backk2p.d/mt7621_phicomm_k2p.dts openwrt/target/linux/ramips/dts/
