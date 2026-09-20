<div align="center">

# 🚀 OpenWrt Packages

**自动化采集的 OpenWrt / ImmortalWrt 第三方插件集合**

[![Update Status](https://github.com/solarflows/AutoWorkflows/actions/workflows/custom-feed.yml/badge.svg)](https://github.com/solarflows/AutoWorkflows/actions/workflows/custom-feed.yml)

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
| `airconnect` | airconnect 将DLNA设备转为AirPlay设备 | [sbwml/luci-app-airconnect](https://github.com/sbwml/luci-app-airconnect) ([`09e3266`](https://github.com/sbwml/luci-app-airconnect/commit/09e3266c08031659ec8fec1eb16dfd19c14968a3)) | `main`, `qt6` |
| `app-store-ui` | app-store-ui | [linkease/istore-ui](https://github.com/linkease/istore-ui) ([`a595bae`](https://github.com/linkease/istore-ui/commit/a595baefa686fdd2f5b5f64820fb1b5a38749165)) | `main`, `qt6` |
| `arp-scan` | arp-scan 基于arping的局域网扫描工具 | [immortalwrt/packages](https://github.com/immortalwrt/packages) | `mt798x` |
| `cdnspeedtest` | cdnspeedtest CloudFlare CDN 测速 | [immortalwrt/packages](https://github.com/immortalwrt/packages) ([`8509f55`](https://github.com/immortalwrt/packages/commit/8509f551edb7beb4a6324afca4d84b2bea404b66)) | `main`, `mt798x`, `qt6` |
| `filebrowser` | filebrowser 文件管理器 | [immortalwrt/packages/](https://github.com/immortalwrt/packages/) ([`8509f55`](https://github.com/immortalwrt/packages//commit/8509f551edb7beb4a6324afca4d84b2bea404b66)) | `main`, `qt6` |
| `geo2txt` | # MosDNS 插件化可定制的DNS转发器 | [sbwml/luci-app-mosdns](https://github.com/sbwml/luci-app-mosdns) ([`bd40245`](https://github.com/sbwml/luci-app-mosdns/commit/bd40245303cd0ba56804d49eed5dbc4be2a082ca)) | `main`, `mt798x`, `qualcommax`, `qt6` |
| `homeproxy` | HomeProxy Tianling Shen主导的FQ | [immortalwrt/homeproxy](https://github.com/immortalwrt/homeproxy) ([`edece28`](https://github.com/immortalwrt/homeproxy/commit/edece28a0085f36d469ec82c8d45f562f602db53)) | `main`, `qt6` |
| `irqbalance` | irqbalance 修复lean的irqbalance | [openwrt/packages](https://github.com/openwrt/packages) ([`6e46ddb`](https://github.com/openwrt/packages/commit/6e46ddbe2ddaee2b4381dbf1a5046ef942b8265b)) | `main`, `qt6` |
| `istore` | linkease 易有云官方软件(易有云ddnsto,linkshare) | [linkease/istore](https://github.com/linkease/istore) ([`3fca15b`](https://github.com/linkease/istore/commit/3fca15b30aeed9ecacb3efc8b4a8b9c2584ad5c7)) | `main`, `qt6` |
| `libtorrent-rasterbar` | libtorrent-rasterbar | [immortalwrt/packages](https://github.com/immortalwrt/packages) ([`8509f55`](https://github.com/immortalwrt/packages/commit/8509f551edb7beb4a6324afca4d84b2bea404b66)) | `main`, `qt6` |
| `luci-app-advanced` | advanced 配置文件级别的设置修改插件 | [sirpdboy/luci-app-advanced](https://github.com/sirpdboy/luci-app-advanced) ([`6a5adf2`](https://github.com/sirpdboy/luci-app-advanced/commit/6a5adf2c962e9130c973b038ffbc4e46fb018d17)) | `main`, `qt6` |
| `luci-app-aliyundrive-webdav` | 阿里网盘Webdav挂载 | [messense/aliyundrive-webdav](https://github.com/messense/aliyundrive-webdav) ([`00caff6`](https://github.com/messense/aliyundrive-webdav/commit/00caff62b55ae53327f1c8824b19b1c9532cc174)) | `main`, `qt6` |
| `luci-app-amlogic` | amlogic 固件更新功能加强 | [ophub/luci-app-amlogic](https://github.com/ophub/luci-app-amlogic) ([`8fe2b60`](https://github.com/ophub/luci-app-amlogic/commit/8fe2b60b4d63e2d83fbe5eb12c37c77a892c0117)) | `main`, `qt6` |
| `luci-app-argon-config` | luci-app-argon-conf | [jerrykuku/luci-app-argon-config](https://github.com/jerrykuku/luci-app-argon-config) ([`ae293f7`](https://github.com/jerrykuku/luci-app-argon-config/commit/ae293f7e8219d7c5742296f0a8e4becd26304c45)) | `main`, `qt6` |
| `luci-app-argon-config` | luci-app-argon-conf | [jerrykuku/luci-app-argon-config](https://github.com/jerrykuku/luci-app-argon-config) ([`ae293f7`](https://github.com/jerrykuku/luci-app-argon-config/commit/ae293f7e8219d7c5742296f0a8e4becd26304c45)) | `mt798x`, `qualcommax` |
| `luci-app-aurora-config` | luci-app-aurora-conf | [eamonxg/luci-app-aurora-config](https://github.com/eamonxg/luci-app-aurora-config) | `qualcommax` |
| `luci-app-autoipsetadder` | autoipsetadder 自动添加不能访问的网站到gfwlist转发链 | [rufengsuixing/luci-app-autoipsetadder](https://github.com/rufengsuixing/luci-app-autoipsetadder) ([`4e013f3`](https://github.com/rufengsuixing/luci-app-autoipsetadder/commit/4e013f36fa793845a47c2f9082e486c01f9b48de)) | `main`, `qt6` |
| `luci-app-autorepeater` | autorepeater OpenWRT自动中继网络 | [peter-tank/luci-app-autorepeater](https://github.com/peter-tank/luci-app-autorepeater) ([`031925a`](https://github.com/peter-tank/luci-app-autorepeater/commit/031925ae633f0825f90946704867092a253c0af4)) | `main`, `qt6` |
| `luci-app-autotimeset` | autotimeset 设置OpenWRT按时执行某个操作 | [sirpdboy/luci-app-autotimeset](https://github.com/sirpdboy/luci-app-autotimeset) ([`babd67a`](https://github.com/sirpdboy/luci-app-autotimeset/commit/babd67a496a592ad9bd625fbc08db804cff45ab9)) | `main`, `qt6` |
| `luci-app-beardropper` | beardropper 控制dropbear的登录 | [NateLol/luci-app-beardropper](https://github.com/NateLol/luci-app-beardropper) ([`e0280b1`](https://github.com/NateLol/luci-app-beardropper/commit/e0280b19010f2ac8ec616b5cde429825d1466872)) | `main`, `qt6` |
| `luci-app-cloudflarespeedtest` | luci-app-cloudflarespeedtest | [mingxiaoyu/luci-app-cloudflarespeedtest](https://github.com/mingxiaoyu/luci-app-cloudflarespeedtest) ([`4229177`](https://github.com/mingxiaoyu/luci-app-cloudflarespeedtest/commit/4229177d5349dda8703271e08816b6b46130630a)) | `main`, `qt6` |
| `luci-app-cloudflarespeedtest` | CloudflareSpeedtest Cloudflare Speedtest 插件 | [stevenjoezhang/luci-app-cloudflarespeedtest](https://github.com/stevenjoezhang/luci-app-cloudflarespeedtest) ([`4229177`](https://github.com/stevenjoezhang/luci-app-cloudflarespeedtest/commit/4229177d5349dda8703271e08816b6b46130630a)) | `mt798x`, `qualcommax` |
| `luci-app-control-guest-wifi` | control-guest-wifi 访客wifi | [zxlhhyccc/bf-package-master](https://github.com/zxlhhyccc/bf-package-master) ([`a3fc411`](https://github.com/zxlhhyccc/bf-package-master/commit/a3fc411f89cbcf7c02da0d2f6870788a6c74b3d3)) | `main`, `qt6` |
| `luci-app-ddnsto` | luci-app-ddnsto | [linkease/ddnsto-openwrt-package](https://github.com/linkease/ddnsto-openwrt-package) | `mt798x`, `qualcommax` |
| `luci-app-dnsfilter` | dnsfilter 基于dnsmasq的去广告程序 | [kiddin9/luci-app-dnsfilter](https://github.com/kiddin9/luci-app-dnsfilter) ([`3a49542`](https://github.com/kiddin9/luci-app-dnsfilter/commit/3a49542e566d8a95cb81b664a05aae29e1f534cf)) | `main`, `mt798x`, `qualcommax`, `qt6` |
| `luci-app-dockerman` | dockerman Docker管理界面 | [lisaac/luci-app-dockerman](https://github.com/lisaac/luci-app-dockerman) ([`3b25f72`](https://github.com/lisaac/luci-app-dockerman/commit/3b25f72861c47ad67f658ec589d999c23a833090)) | `main`, `qt6` |
| `luci-app-filebrowser` | luci-app-filebrowser | [immortalwrt/luci/](https://github.com/immortalwrt/luci/) ([`6d4e767`](https://github.com/immortalwrt/luci//commit/6d4e76757f4b6eb3ee4da74a97a8edecef3c481e)) | `main`, `qt6` |
| `luci-app-homebridge` | homebridge 米家的智能家居到Apple HomeKit的桥接 | [shanglanxin/luci-app-homebridge](https://github.com/shanglanxin/luci-app-homebridge) ([`91cc402`](https://github.com/shanglanxin/luci-app-homebridge/commit/91cc4028fed3080f7b6c6b1e3b1ef3feb75fd1df)) | `main`, `qt6` |
| `luci-app-ikoolproxy` | ikoolproxy 广告过滤 | [1wrt/luci-app-ikoolproxy](https://github.com/1wrt/luci-app-ikoolproxy) ([`85f663c`](https://github.com/1wrt/luci-app-ikoolproxy/commit/85f663ce3e9d9091ef421b001aaeafd1e6f1aeb5)) | `main`, `qt6` |
| `luci-app-iperf` | iperf 测速软件的luci界面 | [Ysurac/openmptcprouter-feeds](https://github.com/Ysurac/openmptcprouter-feeds) ([`824ddac`](https://github.com/Ysurac/openmptcprouter-feeds/commit/824ddac2f76f7617ea03a2145ba79c21cd055da4)) | `main`, `qt6` |
| `luci-app-mmconfig` | mmconfig 3G/LTE 解调器设置 | [erdoukki/luci-app-mmconfig](https://github.com/erdoukki/luci-app-mmconfig) ([`1b4fa94`](https://github.com/erdoukki/luci-app-mmconfig/commit/1b4fa94b3e0e6a06d2fde59f4e07032dce62db01)) | `main`, `qt6` |
| `luci-app-modeminfo` | modeminfo 3G/LTE 解调器信息 | [4IceG/luci-app-modeminfo](https://github.com/4IceG/luci-app-modeminfo) ([`cf80a0c`](https://github.com/4IceG/luci-app-modeminfo/commit/cf80a0c876db67bbd0d19b54fa7f4b197d989fcd)) | `main`, `qt6` |
| `luci-app-msd_lite` | msd_lite 新一代IPTV转发 | [ximiTech/luci-app-msd_lite](https://github.com/ximiTech/luci-app-msd_lite) ([`d44eac8`](https://github.com/ximiTech/luci-app-msd_lite/commit/d44eac82ac4f59540bfe468161c30134c93d7c7f)) | `main`, `qt6` |
| `luci-app-netdata` | netdata | [sirpdboy/luci-app-netdata](https://github.com/sirpdboy/luci-app-netdata) ([`f6bce58`](https://github.com/sirpdboy/luci-app-netdata/commit/f6bce58ba4870d4317e43b1ce39d438fca8d9b6e)) | `main`, `qt6` |
| `luci-app-nodogsplash` | nodogsplash 无WIFIDOG实现WIFI认证 | [tty228/luci-app-nodogsplash](https://github.com/tty228/luci-app-nodogsplash) ([`d45e61b`](https://github.com/tty228/luci-app-nodogsplash/commit/d45e61be490962325d2da11ce34346d1adc857c4)) | `main`, `qt6` |
| `luci-app-openclash` | openclash OpenWRT的Clash | [vernesong/OpenClash](https://github.com/vernesong/OpenClash) ([`c3a33c1`](https://github.com/vernesong/OpenClash/commit/c3a33c1d3407956fdf8f0e0b7c1a4c52e6ad9593)) | `main`, `qt6` |
| `luci-app-passwall` | luci-app-passwall | [solarflows/openwrt-passwall](https://github.com/solarflows/openwrt-passwall) ([`59b3456`](https://github.com/solarflows/openwrt-passwall/commit/59b3456b4cb884d5e4222cdba2ead895069d7b85)) | `main`, `mt798x`, `qualcommax` |
| `luci-app-passwall` | luci-app-passwall | [Openwrt-Passwall/openwrt-passwall](https://github.com/Openwrt-Passwall/openwrt-passwall) ([`59b3456`](https://github.com/Openwrt-Passwall/openwrt-passwall/commit/59b3456b4cb884d5e4222cdba2ead895069d7b85)) | `qt6` |
| `luci-app-passwall2` | 规范化 PKG_RELEASE: 统一 release 为整数规范 | [Openwrt-Passwall/openwrt-passwall2](https://github.com/Openwrt-Passwall/openwrt-passwall2) ([`eb635e9`](https://github.com/Openwrt-Passwall/openwrt-passwall2/commit/eb635e913f665b73dd468a812498f8a442b6a518)) | `main`, `mt798x`, `qualcommax`, `qt6` |
| `luci-app-podman` | luci-app-podman | [Zerogiven-OpenWRT-Packages/luci-app-podman](https://github.com/Zerogiven-OpenWRT-Packages/luci-app-podman) | `qualcommax` |
| `luci-app-poweroff` | poweroff 关机插件 | [esirplayground/luci-app-poweroff](https://github.com/esirplayground/luci-app-poweroff) ([`af21d41`](https://github.com/esirplayground/luci-app-poweroff/commit/af21d4145f169bcbcf6fbfb30aeed5c927bf0fd3)) | `main`, `qt6` |
| `luci-app-pushbot` | pushbot 全能推送 | [zzsj0928/luci-app-pushbot](https://github.com/zzsj0928/luci-app-pushbot) | `qt6` |
| `luci-app-rtorrent` | rtorrent OpenWRT的rTorrent客户端 | [wolandmaster/luci-app-rtorrent](https://github.com/wolandmaster/luci-app-rtorrent) ([`dce154a`](https://github.com/wolandmaster/luci-app-rtorrent/commit/dce154aa557cb24d24be329d19cd15707e626d30)) | `main`, `qt6` |
| `luci-app-smartdns` | SmartDNS DNS解析工具 | [pymumu/luci-app-smartdns](https://github.com/pymumu/luci-app-smartdns) ([`cddf8cd`](https://github.com/pymumu/luci-app-smartdns/commit/cddf8cd04869ffd69c8aa9b01eb58b10f7ba41ca)) | `main`, `qt6` |
| `luci-app-smartdns` | SmartDNS | [pymumu/luci-app-smartdns](https://github.com/pymumu/luci-app-smartdns) ([`cddf8cd`](https://github.com/pymumu/luci-app-smartdns/commit/cddf8cd04869ffd69c8aa9b01eb58b10f7ba41ca)) | `mt798x`, `qualcommax` |
| `luci-app-smartinfo` | smartinfo S.M.A.R.T监控软件 | [huajijam/luci-app-smartinfo](https://github.com/huajijam/luci-app-smartinfo) ([`abff7c8`](https://github.com/huajijam/luci-app-smartinfo/commit/abff7c8d23718ecc19ec24e47627cc77d0b3af6e)) | `main`, `qt6` |
| `luci-app-sms-tool` | sms-tool sms-tool的luci界面 | [4IceG/luci-app-sms-tool](https://github.com/4IceG/luci-app-sms-tool) ([`4cea413`](https://github.com/4IceG/luci-app-sms-tool/commit/4cea4135074bc5c93826139127cc7f0f4d2acbdf)) | `main`, `qt6` |
| `luci-app-syncthing` | syncthing 文件同步 | [immortalwrt/luci](https://github.com/immortalwrt/luci) ([`6d4e767`](https://github.com/immortalwrt/luci/commit/6d4e76757f4b6eb3ee4da74a97a8edecef3c481e)) | `main`, `qt6` |
| `luci-app-tailscaler` | luci-app-tailscaler 异地组网 | [zijieKwok/luci-app-tailscale1](https://github.com/zijieKwok/luci-app-tailscale1) ([`abc4530`](https://github.com/zijieKwok/luci-app-tailscale1/commit/abc4530f1d01d4c8b515248a014a83b55ed319ef)) | `main`, `qt6` |
| `luci-app-taskplan` | TaskPlan 定时任务计划管理器 | [sirpdboy/luci-app-taskplan](https://github.com/sirpdboy/luci-app-taskplan) | `mt798x`, `qualcommax` |
| `luci-app-tasks` | tasks 定时任务 | [jjm2473/openwrt-apps](https://github.com/jjm2473/openwrt-apps) ([`e2e8e74`](https://github.com/jjm2473/openwrt-apps/commit/e2e8e742f5ce3265445d0540dae2fa4c60976db5)) | `main`, `qt6` |
| `luci-app-tcpdump` | tcpdump 抓包工具 | [KFERMercer/luci-app-tcpdump](https://github.com/KFERMercer/luci-app-tcpdump) ([`958650e`](https://github.com/KFERMercer/luci-app-tcpdump/commit/958650ee4dc57b5d7b987ace47c608aaf179dce0)) | `main`, `qt6` |
| `luci-app-tinyfilemanager` | tinyfilemanager 最小web-based文件管理工具 | [muink/luci-app-tinyfilemanager](https://github.com/muink/luci-app-tinyfilemanager) ([`899bbbe`](https://github.com/muink/luci-app-tinyfilemanager/commit/899bbbeefe7169da5ac18228158c0ed0219d7259)) | `main`, `qt6` |
| `luci-app-wechatpush` | wechatpush 全能推送 | [tty228/luci-app-wechatpush](https://github.com/tty228/luci-app-wechatpush) ([`d9cba37`](https://github.com/tty228/luci-app-wechatpush/commit/d9cba373436f7e96592496f8ea392bf74d7fe0c2)) | `main`, `mt798x` |
| `luci-app-wolplus` | sundaqiang sundaqiang编写的软件合集(luci-app-nginx-manager,luci-app-supervisord,luci-app-wolplus) | [sundaqiang/openwrt-packages](https://github.com/sundaqiang/openwrt-packages) ([`dd17da7`](https://github.com/sundaqiang/openwrt-packages/commit/dd17da787894c2f3b5bd22c79367495e63f058ae)) | `main`, `qt6` |
| `luci-app-zerotier` | luci-app-zerotier | [zhengmz/luci-app-zerotier](https://github.com/zhengmz/luci-app-zerotier) | `mt798x` |
| `luci-theme-alpha` | luci-theme-alpha | [derisamedia/luci-theme-alpha](https://github.com/derisamedia/luci-theme-alpha) ([`16e0c03`](https://github.com/derisamedia/luci-theme-alpha/commit/16e0c038c09421236319a4cc369a1f3fc98e1ef4)) | `main`, `qt6` |
| `luci-theme-argon` | luci-theme-argon | [solarflows/luci-theme-argon](https://github.com/solarflows/luci-theme-argon) ([`7327e1b`](https://github.com/solarflows/luci-theme-argon/commit/7327e1b6f9f3ab40288a583ca561b96152d53e64)) | `main`, `mt798x`, `qt6` |
| `luci-theme-argon` | luci-theme-argon | [jerrykuku/luci-theme-argon](https://github.com/jerrykuku/luci-theme-argon) ([`7327e1b`](https://github.com/jerrykuku/luci-theme-argon/commit/7327e1b6f9f3ab40288a583ca561b96152d53e64)) | `qualcommax` |
| `luci-theme-argon-dark-mod` | luci-theme-argon-dark-mod | [Leo-Jo-My/luci-theme-argon-dark-mod](https://github.com/Leo-Jo-My/luci-theme-argon-dark-mod) ([`8d881b8`](https://github.com/Leo-Jo-My/luci-theme-argon-dark-mod/commit/8d881b8fc030500604c3c81ba9a15705f904b8d6)) | `main`, `qt6` |
| `luci-theme-aurora` | luci-theme-aurora | [eamonxg/luci-theme-aurora](https://github.com/eamonxg/luci-theme-aurora) | `qualcommax` |
| `luci-theme-Butterfly-dark` | luci-theme-Butterfly-dark | [hyy-666/luci-theme-Butterfly-dark](https://github.com/hyy-666/luci-theme-Butterfly-dark) ([`869bf2e`](https://github.com/hyy-666/luci-theme-Butterfly-dark/commit/869bf2e3625f564e6cdf4f9b3007f82134ccc206)) | `main`, `qt6` |
| `luci-theme-darkmatter` | luci-theme-darkmatter | [apollo-ng/luci-theme-darkmatter](https://github.com/apollo-ng/luci-theme-darkmatter) ([`017fe1f`](https://github.com/apollo-ng/luci-theme-darkmatter/commit/017fe1f448465c7b141036bb62ef7a3517c312b7)) | `main`, `qt6` |
| `luci-theme-neobird` | luci-theme-neobird | [thinktip/luci-theme-neobird](https://github.com/thinktip/luci-theme-neobird) ([`22ebcf0`](https://github.com/thinktip/luci-theme-neobird/commit/22ebcf0d09c4ec50594b11c1b5419d474970aaa2)) | `main`, `qt6` |
| `luci-wifidog` | wifidog WIFIDOG的luci管理界面WIFI认证 | [walkingsky/luci-wifidog](https://github.com/walkingsky/luci-wifidog) ([`3a2fdff`](https://github.com/walkingsky/luci-wifidog/commit/3a2fdff5584ef8ecb143f0ad254f2972ec5f2f2d)) | `main`, `qt6` |
| `lucky` | lucky 大吉多种功能结合体 | [gdy666/luci-app-lucky](https://github.com/gdy666/luci-app-lucky) ([`c173056`](https://github.com/gdy666/luci-app-lucky/commit/c1730565c6df4ab30d345cf73584f03f5cc7bc8f)) | `main`, `mt798x`, `qualcommax` |
| `lucky` | lucky 大吉多种功能结合体 | [sirpdboy/luci-app-lucky](https://github.com/sirpdboy/luci-app-lucky) ([`c173056`](https://github.com/sirpdboy/luci-app-lucky/commit/c1730565c6df4ab30d345cf73584f03f5cc7bc8f)) | `qt6` |
| `msd_lite` | msd_lite | [ximiTech/msd_lite](https://github.com/ximiTech/msd_lite) ([`c03c400`](https://github.com/ximiTech/msd_lite/commit/c03c4008c69d92c218644ee5a3b9a750982c59ef)) | `main`, `qt6` |
| `my-diy` | my-diy | [hyy-666/my-diy](https://github.com/hyy-666/my-diy) ([`b942c81`](https://github.com/hyy-666/my-diy/commit/b942c8131ebb30dd7fa57437fe8fe1c191bf88cd)) | `main` |
| `my-diy` | my-diy | [hyy-666/my-diy](https://github.com/hyy-666/my-diy) ([`b942c81`](https://github.com/hyy-666/my-diy/commit/b942c8131ebb30dd7fa57437fe8fe1c191bf88cd)) | `qt6` |
| `nas-packages` | linkease 易有云 nas-packages | [linkease/nas-packages](https://github.com/linkease/nas-packages) ([`eccb738`](https://github.com/linkease/nas-packages/commit/eccb7386ec14d2af36e9643f8f6118dc92ac702a)) | `main`, `qt6` |
| `nas-packages-luci` | linkease 易有云 nas-packages-luci | [linkease/nas-packages-luci](https://github.com/linkease/nas-packages-luci) ([`7eac499`](https://github.com/linkease/nas-packages-luci/commit/7eac499c8983d814c36dc87785aabfc630c66716)) | `main`, `qt6` |
| `natter` | Hyy2001X 软件库 | [Hyy2001X/AutoBuild-Packages](https://github.com/Hyy2001X/AutoBuild-Packages) ([`276d594`](https://github.com/Hyy2001X/AutoBuild-Packages/commit/276d594e7ed7d3d3e3bf572ff0334ace300f2645)) | `main`, `qt6` |
| `ngrokc` | ngrokc c语言实现的ngrok | [immortalwrt/packages](https://github.com/immortalwrt/packages) ([`8509f55`](https://github.com/immortalwrt/packages/commit/8509f551edb7beb4a6324afca4d84b2bea404b66)) | `main`, `qt6` |
| `OpenAppFilter` | OpenAppFilter 内核级应用过滤 | [destan19/OpenAppFilter](https://github.com/destan19/OpenAppFilter) ([`b88fcb0`](https://github.com/destan19/OpenAppFilter/commit/b88fcb082597486a816187ec1e02812082161d5e)) | `main`, `qt6` |
| `openwrt-iptvhelper` | iptvhelper 融合IPTV到家庭局域网 | [riverscn/openwrt-iptvhelper](https://github.com/riverscn/openwrt-iptvhelper) ([`338b898`](https://github.com/riverscn/openwrt-iptvhelper/commit/338b898f3b76159f05794b0120d38e697a7808b0)) | `main`, `qt6` |
| `openwrt-nezha` | nezha 开源、轻量的服务器和网站监控、运维工具 | [Erope/openwrt_nezha](https://github.com/Erope/openwrt_nezha) ([`f9ff58d`](https://github.com/Erope/openwrt_nezha/commit/f9ff58d097558ef0a9c9ac2c39f1e0e247179db2)) | `main`, `qt6` |
| `openwrt-passwall-packages` | PassWall1&2 科学上网 | [Openwrt-Passwall/openwrt-passwall-packages](https://github.com/Openwrt-Passwall/openwrt-passwall-packages) ([`03c57c1`](https://github.com/Openwrt-Passwall/openwrt-passwall-packages/commit/03c57c1255a72f09c06cb4866025e07491de7d53)) | `main`, `mt798x`, `qualcommax`, `qt6` |
| `openwrt-subconverter` | subconverter 订阅转换 | [WYC-2020/openwrt-subconverter](https://github.com/WYC-2020/openwrt-subconverter) ([`c725d71`](https://github.com/WYC-2020/openwrt-subconverter/commit/c725d7142ddb0d5100f1e06a4eb0e3cab622b52c)) | `main`, `qt6` |
| `pikpak-webdav` | pikpak-webdav 海外迅雷网盘 | [ykxVK8yL5L/pikpak-webdav](https://github.com/ykxVK8yL5L/pikpak-webdav) ([`c6d2219`](https://github.com/ykxVK8yL5L/pikpak-webdav/commit/c6d221969570474ce1baeee4ddf876283e7547dd)) | `main`, `qt6` |
| `shadow-tls` | ssr-plus 科学上网 | [fw876/helloworld](https://github.com/fw876/helloworld) ([`db7e943`](https://github.com/fw876/helloworld/commit/db7e943ed311548b44b28ed00784975d3f481093)) | `main`, `qt6` |
| `smartdns` | smartdns | [immortalwrt/packages](https://github.com/immortalwrt/packages) ([`8509f55`](https://github.com/immortalwrt/packages/commit/8509f551edb7beb4a6324afca4d84b2bea404b66)) | `main`, `qt6` |
| `smartdns` | SmartDNS | [pymumu/openwrt-smartdns](https://github.com/pymumu/openwrt-smartdns) ([`8509f55`](https://github.com/pymumu/openwrt-smartdns/commit/8509f551edb7beb4a6324afca4d84b2bea404b66)) | `mt798x` |
| `sms-tool` | sms-tool | [4IceG/packages](https://github.com/4IceG/packages) ([`3ad0ae0`](https://github.com/4IceG/packages/commit/3ad0ae006d3ec96f4753bd9f8dffc7a0e2cb6d34)) | `main`, `qt6` |
| `tailscale` | tailscale | [openwrt/packages/](https://github.com/openwrt/packages/) | `mt798x` |
| `tencentcloud_ddns` | tencentcloud_ddns 腾讯云DDNS | [Tencent-Cloud-Plugins/tencentcloud-openwrt-plugin-ddns](https://github.com/Tencent-Cloud-Plugins/tencentcloud-openwrt-plugin-ddns) ([`537a537`](https://github.com/Tencent-Cloud-Plugins/tencentcloud-openwrt-plugin-ddns/commit/537a537436663cb1595a49db44989fac4314d83c)) | `main`, `qt6` |
| `wrtbwmon` | wrtbwmon | [padavanonly/immortalwrt-mt798x-24.10](https://github.com/padavanonly/immortalwrt-mt798x-24.10) | `mt798x` |
| `xmurp-ua` | xmurp-ua 在 OpenWrt 上修改 HTTP 流量的 UA | [CHN-beta/xmurp-ua](https://github.com/CHN-beta/xmurp-ua) ([`f3383f5`](https://github.com/CHN-beta/xmurp-ua/commit/f3383f5f85301725c0bbc186ef96804f8411a34d)) | `main`, `qt6` |
| `zerotier` | ZeroTier | [coolsnowwolf/packages](https://github.com/coolsnowwolf/packages) | `mt798x` |

> 📌 仅列出各分支中实际采集的插件，已注释/归档的不在此列。

## 🔄 更新频率

插件每 **12 小时** 自动更新一次（北京时间 0:00 和 12:00）。

**最近更新**: 2026-09-20 13:02

## 🙏 致谢

感谢所有开源社区和开发者的贡献！

---

<div align="center">

**如果这个项目对你有帮助，请给一个 ⭐ Star 支持一下！**

</div>
