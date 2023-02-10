ipq6000系列固件分享:  

2023.2.10 切换到WIFI分支，无线使用cmiot_ax18（配置一样）的文件，具体请看

https://github.com/sdf8057/ipq6000/tree/wifi

https://github.com/sdf8057/ipq6000/tree/wifi/package/addition/ath11k-wifi

实测无线可用，空旷区域ZNM2端iperf3-s + iPhone se2 iperf3-c 多线程 5G满千兆、2.4G百兆多点，芯片正常水平，谈不上多好。

coremark跑分1608Mhz频率下跑到20529.330114，比默频高25%左右
![Snipaste_2023-02-10_15-44-45](https://user-images.githubusercontent.com/24839804/218046673-944e67ef-b5df-4fb2-830e-9f38c56c6830.png)


NSS负载、CPU负载、温度正常显示，温度略高，对不对（不知道）但是无所谓了
![image](https://user-images.githubusercontent.com/24839804/218046968-8ceb5617-3bea-47dc-8396-9a631f89aa1a.png)
![image](https://user-images.githubusercontent.com/24839804/218047155-271e611a-6b4f-4908-a695-1b7469b96a50.png)

DNS插件没上，源里面没有，推荐手动安装https://github.com/sbwml/luci-app-mosdns，上手即用。

其他的OpenClash、SSRPLUS、SQM常见的都有。


2022.12.17删除了其他机型yml、config文件，着重重点优化ZN-M2-1G
删除了一些我认为没必要预编译的插件
删除了所有DDNS、老掉牙的VPN服务器、VPN终端、我觉得没什么卵用的unblockmusic

无线暂时没有编译上。可以便以上，但是出来的效果太差了，几乎等同于不能用，等优化吧。
确实需要的话，建议去用https://supes.top/ 的，他那个无线实测是正常的



固件下载请去telegram频道，https://t.me/ipq6000_romshare

0819更新日志：  
1.ssr-plus更新到最新版。  
2.添加了自动重启app，定时重启能提高使用体验，  
3.去掉了turboacc中的bbr加速状态，kernel 4.4不支持bbr加速。  

0824更新日志：  
1.解锁网易云音乐使用go版本，节约内存，  
2.修复turboacc开启dns缓存再关闭之后dns解析不正常的问题，  
3.加入nsscrypto模块，或许对于某些软件的加解密过程有些作用。  

0920更新日志：  
1.插件更新。  
2.最大连接数增加到65535。  

0923更新日志：  
1.同步上游最新更新。  
2.cpu超频到1.8ghz。  

1003更新日志：  
1.优化超频选项，根据跑分结果选定三档频率，1.0-1.4ghz。  
2.优化nss失效状态下的网络性能。  

1014更新日志：  
1.源码抹除个人修改痕迹，还原默认设置。  
2.和目ax18固件精简版和完全版双版本更新。  
3.重构云编译脚本仓库，提升可读性。  
4.添加nss状态显示。  

1016更新日志：  
1.更优雅的解决的端口回环设置失效的问题。  
2.简化云编译.config文件，方便二次修改。

1020更新日志：  
1.梳理dnsmasq相关代码，修复bug。  
2.默认关闭“过滤ipv6 dns解析”。  
3.openssl升级到q版本。  

1111更新日志：  
1.cpu频率开放更多挡位，0.8~1.8g。  
2.云编译添加红米ax6支持。

12.01更新日志：  
1.云编译添加了glinet gl-mt2500支持。  
2.云编译添加了红米ax6000设备支持。  
