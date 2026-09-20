<div align="center">

# 🚀 OpenWrt Packages

**自动化采集的 OpenWrt / ImmortalWrt 第三方插件集合**

[![Update Status](https://github.com/solarflows/AutoWorkflows/actions/workflows/OpenWRT_Packages_Updater.yml/badge.svg)](https://github.com/solarflows/AutoWorkflows/actions/workflows/OpenWRT_Packages_Updater.yml)

</div>

---

## 📦 分支说明

| 分支 | 目标平台 | 说明 |
|:-----|:---------|:-----|
| `main` | 通用 | 完整插件集合，包含所有主题和应用 |
| `qt6` | 通用 (Qt6) | 基于 Qt6 的插件集合 |
| `mt798x` | MediaTek MT798x | MT7981/MT7986 路由器专用 |
| `qualcommax` | Qualcomm Atheros | 高通平台路由器专用 |

## 🎯 使用方法

在你的 OpenWrt 构建脚本中添加：

```bash
git clone -b <branch> https://github.com/solarflows/openwrt-packages.git package/openwrt-packages
```

## 📖 插件来源

| 插件名称 | 功能描述 | 上游来源 | 适用分支 |
|:---|:---|:---|:---|
| `airconnect` | airconnect 将DLNA设备转为AirPlay设备 | [sbwml/luci-app-airconnect](https://github.com/sbwml/luci-app-airconnect) | `main`, `qt6` |
| `app-store-ui` | app-store-ui | [linkease/istore-ui](https://github.com/linkease/istore-ui) | `main`, `qt6` |
| `arp-scan` | arp-scan 基于arping的局域网扫描工具 | [immortalwrt/packages](https://github.com/immortalwrt/packages) | `mt798x` |
| `cdnspeedtest` | cdnspeedtest CloudFlare CDN 测速 | [immortalwrt/packages](https://github.com/immortalwrt/packages) | `main`, `mt798x`, `qt6` |
| `filebrowser` | filebrowser 文件管理器 | [immortalwrt/packages/](https://github.com/immortalwrt/packages/) | `main`, `qt6` |
| `geo2txt` | # MosDNS 插件化可定制的DNS转发器 | [sbwml/luci-app-mosdns](https://github.com/sbwml/luci-app-mosdns) | `main`, `mt798x`, `qualcommax`, `qt6` |
| `homeproxy` | HomeProxy Tianling Shen主导的FQ | [immortalwrt/homeproxy](https://github.com/immortalwrt/homeproxy) | `main`, `qt6` |
| `irqbalance` | irqbalance 修复lean的irqbalance | [openwrt/packages](https://github.com/openwrt/packages) | `main`, `qt6` |
| `istore` | linkease 易有云官方软件(易有云ddnsto,linkshare) | [linkease/istore](https://github.com/linkease/istore) | `main`, `qt6` |
| `libtorrent-rasterbar` | libtorrent-rasterbar | [immortalwrt/packages](https://github.com/immortalwrt/packages) | `main`, `qt6` |
| `luci-app-advanced` | advanced 配置文件级别的设置修改插件 | [sirpdboy/luci-app-advanced](https://github.com/sirpdboy/luci-app-advanced) | `main`, `qt6` |
| `luci-app-aliyundrive-webdav` | 阿里网盘Webdav挂载 | [messense/aliyundrive-webdav](https://github.com/messense/aliyundrive-webdav) | `main`, `qt6` |
| `luci-app-amlogic` | amlogic 固件更新功能加强 | [ophub/luci-app-amlogic](https://github.com/ophub/luci-app-amlogic) | `main`, `qt6` |
| `luci-app-argon-config` | luci-app-argon-conf | [jerrykuku/luci-app-argon-config](https://github.com/jerrykuku/luci-app-argon-config) | `main`, `qt6` |
| `luci-app-argon-config` | luci-app-argon-conf | [jerrykuku/luci-app-argon-config](https://github.com/jerrykuku/luci-app-argon-config) | `mt798x`, `qualcommax` |
| `luci-app-aurora-config` | luci-app-aurora-conf | [eamonxg/luci-app-aurora-config](https://github.com/eamonxg/luci-app-aurora-config) | `qualcommax` |
| `luci-app-autoipsetadder` | autoipsetadder 自动添加不能访问的网站到gfwlist转发链 | [rufengsuixing/luci-app-autoipsetadder](https://github.com/rufengsuixing/luci-app-autoipsetadder) | `main`, `qt6` |
| `luci-app-autorepeater` | autorepeater OpenWRT自动中继网络 | [peter-tank/luci-app-autorepeater](https://github.com/peter-tank/luci-app-autorepeater) | `main`, `qt6` |
| `luci-app-autotimeset` | autotimeset 设置OpenWRT按时执行某个操作 | [sirpdboy/luci-app-autotimeset](https://github.com/sirpdboy/luci-app-autotimeset) | `main`, `qt6` |
| `luci-app-beardropper` | beardropper 控制dropbear的登录 | [NateLol/luci-app-beardropper](https://github.com/NateLol/luci-app-beardropper) | `main`, `qt6` |
| `luci-app-cloudflarespeedtest` | luci-app-cloudflarespeedtest | [mingxiaoyu/luci-app-cloudflarespeedtest](https://github.com/mingxiaoyu/luci-app-cloudflarespeedtest) | `main`, `qt6` |
| `luci-app-cloudflarespeedtest` | CloudflareSpeedtest Cloudflare Speedtest 插件 | [stevenjoezhang/luci-app-cloudflarespeedtest](https://github.com/stevenjoezhang/luci-app-cloudflarespeedtest) | `mt798x`, `qualcommax` |
| `luci-app-control-guest-wifi` | control-guest-wifi 访客wifi | [zxlhhyccc/bf-package-master](https://github.com/zxlhhyccc/bf-package-master) | `main`, `qt6` |
| `luci-app-ddnsto` | luci-app-ddnsto | [linkease/ddnsto-openwrt-package](https://github.com/linkease/ddnsto-openwrt-package) | `mt798x`, `qualcommax` |
| `luci-app-dnsfilter` | dnsfilter 基于dnsmasq的去广告程序 | [kiddin9/luci-app-dnsfilter](https://github.com/kiddin9/luci-app-dnsfilter) | `main`, `mt798x`, `qualcommax`, `qt6` |
| `luci-app-dockerman` | dockerman Docker管理界面 | [lisaac/luci-app-dockerman](https://github.com/lisaac/luci-app-dockerman) | `main`, `qt6` |
| `luci-app-filebrowser` | luci-app-filebrowser | [immortalwrt/luci/](https://github.com/immortalwrt/luci/) | `main`, `qt6` |
| `luci-app-homebridge` | homebridge 米家的智能家居到Apple HomeKit的桥接 | [shanglanxin/luci-app-homebridge](https://github.com/shanglanxin/luci-app-homebridge) | `main`, `qt6` |
| `luci-app-ikoolproxy` | ikoolproxy 广告过滤 | [1wrt/luci-app-ikoolproxy](https://github.com/1wrt/luci-app-ikoolproxy) | `main`, `qt6` |
| `luci-app-iperf` | iperf 测速软件的luci界面 | [Ysurac/openmptcprouter-feeds](https://github.com/Ysurac/openmptcprouter-feeds) | `main`, `qt6` |
| `luci-app-mmconfig` | mmconfig 3G/LTE 解调器设置 | [erdoukki/luci-app-mmconfig](https://github.com/erdoukki/luci-app-mmconfig) | `main`, `qt6` |
| `luci-app-modeminfo` | modeminfo 3G/LTE 解调器信息 | [4IceG/luci-app-modeminfo](https://github.com/4IceG/luci-app-modeminfo) | `main`, `qt6` |
| `luci-app-msd_lite` | msd_lite 新一代IPTV转发 | [ximiTech/luci-app-msd_lite](https://github.com/ximiTech/luci-app-msd_lite) | `main`, `qt6` |
| `luci-app-netdata` | netdata | [sirpdboy/luci-app-netdata](https://github.com/sirpdboy/luci-app-netdata) | `main`, `qt6` |
| `luci-app-nodogsplash` | nodogsplash 无WIFIDOG实现WIFI认证 | [tty228/luci-app-nodogsplash](https://github.com/tty228/luci-app-nodogsplash) | `main`, `qt6` |
| `luci-app-openclash` | openclash OpenWRT的Clash | [vernesong/OpenClash](https://github.com/vernesong/OpenClash) | `main`, `qt6` |
| `luci-app-passwall` | luci-app-passwall | [solarflows/openwrt-passwall](https://github.com/solarflows/openwrt-passwall) | `main`, `mt798x`, `qualcommax` |
| `luci-app-passwall` | luci-app-passwall | [Openwrt-Passwall/openwrt-passwall](https://github.com/Openwrt-Passwall/openwrt-passwall) | `qt6` |
| `luci-app-passwall2` | 规范化 PKG_RELEASE: 统一 release 为整数规范 | [Openwrt-Passwall/openwrt-passwall2](https://github.com/Openwrt-Passwall/openwrt-passwall2) | `main`, `mt798x`, `qualcommax`, `qt6` |
| `luci-app-podman` | luci-app-podman | [Zerogiven-OpenWRT-Packages/luci-app-podman](https://github.com/Zerogiven-OpenWRT-Packages/luci-app-podman) | `qualcommax` |
| `luci-app-poweroff` | poweroff 关机插件 | [esirplayground/luci-app-poweroff](https://github.com/esirplayground/luci-app-poweroff) | `main`, `qt6` |
| `luci-app-pushbot` | pushbot 全能推送 | [zzsj0928/luci-app-pushbot](https://github.com/zzsj0928/luci-app-pushbot) | `qt6` |
| `luci-app-rtorrent` | rtorrent OpenWRT的rTorrent客户端 | [wolandmaster/luci-app-rtorrent](https://github.com/wolandmaster/luci-app-rtorrent) | `main`, `qt6` |
| `luci-app-smartdns` | SmartDNS DNS解析工具 | [pymumu/luci-app-smartdns](https://github.com/pymumu/luci-app-smartdns) | `main`, `qt6` |
| `luci-app-smartdns` | SmartDNS | [pymumu/luci-app-smartdns](https://github.com/pymumu/luci-app-smartdns) | `mt798x`, `qualcommax` |
| `luci-app-smartinfo` | smartinfo S.M.A.R.T监控软件 | [huajijam/luci-app-smartinfo](https://github.com/huajijam/luci-app-smartinfo) | `main`, `qt6` |
| `luci-app-sms-tool` | sms-tool sms-tool的luci界面 | [4IceG/luci-app-sms-tool](https://github.com/4IceG/luci-app-sms-tool) | `main`, `qt6` |
| `luci-app-syncthing` | syncthing 文件同步 | [immortalwrt/luci](https://github.com/immortalwrt/luci) | `main`, `qt6` |
| `luci-app-tailscaler` | luci-app-tailscaler 异地组网 | [zijieKwok/luci-app-tailscale1](https://github.com/zijieKwok/luci-app-tailscale1) | `main`, `qt6` |
| `luci-app-taskplan` | TaskPlan 定时任务计划管理器 | [sirpdboy/luci-app-taskplan](https://github.com/sirpdboy/luci-app-taskplan) | `mt798x`, `qualcommax` |
| `luci-app-tasks` | tasks 定时任务 | [jjm2473/openwrt-apps](https://github.com/jjm2473/openwrt-apps) | `main`, `qt6` |
| `luci-app-tcpdump` | tcpdump 抓包工具 | [KFERMercer/luci-app-tcpdump](https://github.com/KFERMercer/luci-app-tcpdump) | `main`, `qt6` |
| `luci-app-tinyfilemanager` | tinyfilemanager 最小web-based文件管理工具 | [muink/luci-app-tinyfilemanager](https://github.com/muink/luci-app-tinyfilemanager) | `main`, `qt6` |
| `luci-app-wechatpush` | wechatpush 全能推送 | [tty228/luci-app-wechatpush](https://github.com/tty228/luci-app-wechatpush) | `main`, `mt798x` |
| `luci-app-wolplus` | sundaqiang sundaqiang编写的软件合集(luci-app-nginx-manager,luci-app-supervisord,luci-app-wolplus) | [sundaqiang/openwrt-packages](https://github.com/sundaqiang/openwrt-packages) | `main`, `qt6` |
| `luci-app-zerotier` | luci-app-zerotier | [zhengmz/luci-app-zerotier](https://github.com/zhengmz/luci-app-zerotier) | `mt798x` |
| `luci-theme-alpha` | luci-theme-alpha | [derisamedia/luci-theme-alpha](https://github.com/derisamedia/luci-theme-alpha) | `main`, `qt6` |
| `luci-theme-argon` | luci-theme-argon | [solarflows/luci-theme-argon](https://github.com/solarflows/luci-theme-argon) | `main`, `mt798x`, `qt6` |
| `luci-theme-argon` | luci-theme-argon | [jerrykuku/luci-theme-argon](https://github.com/jerrykuku/luci-theme-argon) | `qualcommax` |
| `luci-theme-argon-dark-mod` | luci-theme-argon-dark-mod | [Leo-Jo-My/luci-theme-argon-dark-mod](https://github.com/Leo-Jo-My/luci-theme-argon-dark-mod) | `main`, `qt6` |
| `luci-theme-aurora` | luci-theme-aurora | [eamonxg/luci-theme-aurora](https://github.com/eamonxg/luci-theme-aurora) | `qualcommax` |
| `luci-theme-Butterfly-dark` | luci-theme-Butterfly-dark | [hyy-666/luci-theme-Butterfly-dark](https://github.com/hyy-666/luci-theme-Butterfly-dark) | `main`, `qt6` |
| `luci-theme-darkmatter` | luci-theme-darkmatter | [apollo-ng/luci-theme-darkmatter](https://github.com/apollo-ng/luci-theme-darkmatter) | `main`, `qt6` |
| `luci-theme-neobird` | luci-theme-neobird | [thinktip/luci-theme-neobird](https://github.com/thinktip/luci-theme-neobird) | `main`, `qt6` |
| `luci-wifidog` | wifidog WIFIDOG的luci管理界面WIFI认证 | [walkingsky/luci-wifidog](https://github.com/walkingsky/luci-wifidog) | `main`, `qt6` |
| `lucky` | lucky 大吉多种功能结合体 | [gdy666/luci-app-lucky](https://github.com/gdy666/luci-app-lucky) | `main`, `mt798x`, `qualcommax` |
| `lucky` | lucky 大吉多种功能结合体 | [sirpdboy/luci-app-lucky](https://github.com/sirpdboy/luci-app-lucky) | `qt6` |
| `msd_lite` | msd_lite | [ximiTech/msd_lite](https://github.com/ximiTech/msd_lite) | `main`, `qt6` |
| `my-diy` | my-diy | [hyy-666/my-diy](https://github.com/hyy-666/my-diy) | `main` |
| `my-diy` | my-diy | [hyy-666/my-diy](https://github.com/hyy-666/my-diy) | `qt6` |
| `nas-packages` | linkease 易有云 nas-packages | [linkease/nas-packages](https://github.com/linkease/nas-packages) | `main`, `qt6` |
| `nas-packages-luci` | linkease 易有云 nas-packages-luci | [linkease/nas-packages-luci](https://github.com/linkease/nas-packages-luci) | `main`, `qt6` |
| `natter` | Hyy2001X 软件库 | [Hyy2001X/AutoBuild-Packages](https://github.com/Hyy2001X/AutoBuild-Packages) | `main`, `qt6` |
| `ngrokc` | ngrokc c语言实现的ngrok | [immortalwrt/packages](https://github.com/immortalwrt/packages) | `main`, `qt6` |
| `OpenAppFilter` | OpenAppFilter 内核级应用过滤 | [destan19/OpenAppFilter](https://github.com/destan19/OpenAppFilter) | `main`, `qt6` |
| `openwrt-iptvhelper` | iptvhelper 融合IPTV到家庭局域网 | [riverscn/openwrt-iptvhelper](https://github.com/riverscn/openwrt-iptvhelper) | `main`, `qt6` |
| `openwrt-nezha` | nezha 开源、轻量的服务器和网站监控、运维工具 | [Erope/openwrt_nezha](https://github.com/Erope/openwrt_nezha) | `main`, `qt6` |
| `openwrt-passwall-packages` | PassWall1&2 科学上网 | [Openwrt-Passwall/openwrt-passwall-packages](https://github.com/Openwrt-Passwall/openwrt-passwall-packages) | `main`, `mt798x`, `qualcommax`, `qt6` |
| `openwrt-subconverter` | subconverter 订阅转换 | [WYC-2020/openwrt-subconverter](https://github.com/WYC-2020/openwrt-subconverter) | `main`, `qt6` |
| `pikpak-webdav` | pikpak-webdav 海外迅雷网盘 | [ykxVK8yL5L/pikpak-webdav](https://github.com/ykxVK8yL5L/pikpak-webdav) | `main`, `qt6` |
| `shadow-tls` | ssr-plus 科学上网 | [fw876/helloworld](https://github.com/fw876/helloworld) | `main`, `qt6` |
| `smartdns` | smartdns | [immortalwrt/packages](https://github.com/immortalwrt/packages) | `main`, `qt6` |
| `smartdns` | SmartDNS | [pymumu/openwrt-smartdns](https://github.com/pymumu/openwrt-smartdns) | `mt798x` |
| `sms-tool` | sms-tool | [4IceG/packages](https://github.com/4IceG/packages) | `main`, `qt6` |
| `tailscale` | tailscale | [openwrt/packages/](https://github.com/openwrt/packages/) | `mt798x` |
| `tencentcloud_ddns` | tencentcloud_ddns 腾讯云DDNS | [Tencent-Cloud-Plugins/tencentcloud-openwrt-plugin-ddns](https://github.com/Tencent-Cloud-Plugins/tencentcloud-openwrt-plugin-ddns) | `main`, `qt6` |
| `wrtbwmon` | wrtbwmon | [padavanonly/immortalwrt-mt798x-24.10](https://github.com/padavanonly/immortalwrt-mt798x-24.10) | `mt798x` |
| `xmurp-ua` | xmurp-ua 在 OpenWrt 上修改 HTTP 流量的 UA | [CHN-beta/xmurp-ua](https://github.com/CHN-beta/xmurp-ua) | `main`, `qt6` |
| `zerotier` | ZeroTier | [coolsnowwolf/packages](https://github.com/coolsnowwolf/packages) | `mt798x` |

> 📌 仅列出各分支中实际采集的插件，已注释/归档的不在此列。

## 🔄 更新频率

插件每 **12 小时** 自动更新一次（北京时间 0:00 和 12:00）。

**最近更新**: 2026-09-20 10:54

## 🙏 致谢

感谢所有开源社区和开发者的贡献！

---

<div align="center">

**如果这个项目对你有帮助，请给一个 ⭐ Star 支持一下！**

</div>
