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

# Modify some apps
rm -rf feeds/luci/applications/luci-app-cpufreq
rm -rf feeds/luci/applications/luci-app-ddns
rm -rf feeds/luci/applications/luci-app-openvpn-server

git clone https://github.com/sdf8057/modify_apps.git package/modify_apps

mv package/modify_apps/luci-app-cpufreq feeds/luci/applications/luci-app-cpufreq
mv package/modify_apps/luci-app-ddns feeds/luci/applications/luci-app-ddns
mv package/modify_apps/luci-app-openvpn-server feeds/luci/applications/luci-app-openvpn-server

echo 'refresh feeds'
./scripts/feeds update -a
./scripts/feeds install -a
