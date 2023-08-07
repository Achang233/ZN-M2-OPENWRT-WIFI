兆能M2/和目AX18 openwrt云编译项目 目前在实验

[sdf8057佬的ipq6000分支](https://github.com/sdf8057/ipq6000)

[大雕的openwrt-gl-ax1800分支](https://github.com/coolsnowwolf/openwrt-gl-ax1800)

[immortalwrt分支](https://github.com/immortalwrt/immortalwrt)

两个分支，以前sdf8057的分支支持wifi 目前wifi分支删除 正在尝试大雕原始分支


fix:目前release中0238的固件可在zn-m2中运行，正在测试兼容性，目测wifi/nss是好的，相对于原sdf8057/ipq6000分支wifi局域网内传输速度略有下降，luci ui十分简洁，软件源相对也少很多，但是upud是好的。目前在线编译如果不修改记录的hash值，仍然是寄的，这个得等大雕修复

fix2:sdf8057的分支 luci做的很优秀，但wifi的分支被删除，main分支hostapd不能正常编译，目前主要精力集中于编译出此分支的包。


fix3：immortalwrt分支年内会有对ipq6000系列设备支持，目前已知内核版本为6.x，无nss支持，WiFi为能用水平。


经测试，sdf8057的分支可能是某些地方与大雕不同 导致 hostapd不能正常编译 目前怀疑是qca驱动与hostapd有冲突 但是找不到解决办法 尝试过杂交qca包 以失败告终

2023.8.8:找到了sdf佬原来的wifi分支 稍微拆东墙补西墙之后能够正常出包 本人对openwrt项目没有太大了解 会尽可能的维护这个分支 但是维护这个分支不是未来
还是希望将来有大佬能够接手这个项目下去

如果哪位过路的大佬 有兴致能够解决上述问题 还请大佬不吝赐教

如果短期内不能解决此问题 该项目中止 我也要换回X86设备了
