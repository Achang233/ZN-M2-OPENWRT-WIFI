#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#

# Modify default IP
#sed -i 's/192.168.1.1/192.168.50.5/g' package/base-files/files/bin/config_generate

# Modify version
#sed -i 's/R22.11.11/V22.11.11/g' package/addition/default-settings/files/99-default-settings

echo -e 'CONFIG_DEVEL=y\nCONFIG_CCACHE=y' >> .config

git clone -b main --depth 1 https://github.com/Zyilin98/luci-app-3ginfo-lite package/new/luci-app-3ginfo-lite
git clone -b main --depth 1 https://github.com/4IceG/luci-app-sms-tool-js package/new/luci-app-sms-tool-js
git clone -b main --depth 1 https://github.com/4IceG/luci-app-modemband package/new/luci-app-modemband
make package/symlinks