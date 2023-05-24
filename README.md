兆能M2/和目AX18 openwrt云编译项目 目前在实验

[sdf8057佬的ipq6000分支](https://github.com/sdf8057/ipq6000)

[大雕的openwrt-gl-ax1800分支](https://github.com/coolsnowwolf/openwrt-gl-ax1800)

两个分支，以前sdf8057的分支支持wifi 目前wifi分支删除 正在尝试大雕原始分支


fix:目前release中1833的固件可在zn-m2中运行，正在测试兼容性，目测wifi/nss是好的，相对于原sdf8057/ipq6000分支wifi局域网内传输速度略有下降，luci ui十分简洁，软件源相对也少很多，但是upud是好的。目前在线编译如果不修改记录的hash值，仍然是寄的，这个得等大雕修复，1833版本是本地编译的
fix2:sdf8057的分支虽然很优秀，但是去除了wifi的支持，我也懒得加回来，以后不出意外只维护大雕分支版本
