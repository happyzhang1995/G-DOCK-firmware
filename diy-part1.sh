#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#

# Uncomment a feed source
sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add a feed source
#sed -i '$a src-git lienol https://github.com/Lienol/openwrt-package' feeds.conf.default

# luci-theme-infinityfreedom
git clone -b master --single-branch https://github.com/xiaoqingfengATGH/luci-theme-infinityfreedom package/new/infinityfreedom

# 网易云解锁
git clone https://github.com/project-openwrt/luci-app-unblockneteasemusic package/new/luci-app-unblockneteasemusic

# SeverChan
git clone -b master --single-branch https://github.com/tty228/luci-app-serverchan package/new/luci-app-serverchan

#OpenClash
git clone -b master --single-branch https://github.com/vernesong/OpenClash package/new/luci-app-openclash
