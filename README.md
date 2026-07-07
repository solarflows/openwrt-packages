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

| 插件 | 来源 | 分支 |
|:-----|:-----|:-----|
| `*` | [linkease/istore/](https://github.com/linkease/istore/) | `main`, `qt6`, `main`, `qt6`, `main`, `qt6`, `main`, `qt6`
| `OpenAppFilter` | [destan19/OpenAppFilter](https://github.com/destan19/OpenAppFilter) | `main`, `qt6`
| `airconnect` | [sbwml/luci-app-airconnect](https://github.com/sbwml/luci-app-airconnect) | `main`, `qt6`
| `app-store-ui` | [linkease/istore-ui](https://github.com/linkease/istore-ui) | `main`, `qt6`
| `arp-scan` | [immortalwrt/packages](https://github.com/immortalwrt/packages) | `mt798x`
| `cdnspeedtest` | [immortalwrt/packages](https://github.com/immortalwrt/packages) | `main`, `mt798x`, `qt6`
| `filebrowser` | [immortalwrt/packages/](https://github.com/immortalwrt/packages/) | `main`, `qt6`
| `homeproxy` | [immortalwrt/homeproxy](https://github.com/immortalwrt/homeproxy) | `main`, `qt6`
| `irqbalance` | [openwrt/packages](https://github.com/openwrt/packages) | `main`, `qt6`
| `libtorrent-rasterbar` | [immortalwrt/packages](https://github.com/immortalwrt/packages) | `main`, `qt6`
| `luci-app-advanced` | [sirpdboy/luci-app-advanced](https://github.com/sirpdboy/luci-app-advanced) | `main`, `qt6`
| `luci-app-aliyundrive-webdav` | [messense/aliyundrive-webdav](https://github.com/messense/aliyundrive-webdav) | `main`, `qt6`
| `luci-app-amlogic` | [ophub/luci-app-amlogic](https://github.com/ophub/luci-app-amlogic) | `main`, `qt6`
| `luci-app-argon-config` | [jerrykuku/luci-app-argon-config](https://github.com/jerrykuku/luci-app-argon-config) | `main`, `mt798x`, `qt6`, `qualcommax`
| `luci-app-aurora-config` | [eamonxg/luci-app-aurora-config](https://github.com/eamonxg/luci-app-aurora-config) | `qualcommax`
| `luci-app-autoipsetadder` | [rufengsuixing/luci-app-autoipsetadder](https://github.com/rufengsuixing/luci-app-autoipsetadder) | `main`, `qt6`
| `luci-app-autorepeater` | [peter-tank/luci-app-autorepeater](https://github.com/peter-tank/luci-app-autorepeater) | `main`, `qt6`
| `luci-app-autotimeset` | [sirpdboy/luci-app-autotimeset](https://github.com/sirpdboy/luci-app-autotimeset) | `main`, `qt6`
| `luci-app-beardropper` | [NateLol/luci-app-beardropper](https://github.com/NateLol/luci-app-beardropper) | `main`, `qt6`
| `luci-app-cloudflarespeedtest` | [mingxiaoyu/luci-app-cloudflarespeedtest](https://github.com/mingxiaoyu/luci-app-cloudflarespeedtest) | `main`, `qt6`, `mt798x`, `qualcommax`
| `luci-app-control-guest-wifi` | [zxlhhyccc/bf-package-master](https://github.com/zxlhhyccc/bf-package-master) | `main`, `qt6`
| `luci-app-ddnsto` | [linkease/ddnsto-openwrt-package](https://github.com/linkease/ddnsto-openwrt-package) | `mt798x`, `qualcommax`
| `luci-app-dnsfilter` | [kiddin9/luci-app-dnsfilter](https://github.com/kiddin9/luci-app-dnsfilter) | `main`, `mt798x`, `qt6`, `qualcommax`
| `luci-app-dockerman` | [lisaac/luci-app-dockerman](https://github.com/lisaac/luci-app-dockerman) | `main`, `qt6`
| `luci-app-filebrowser` | [immortalwrt/luci/](https://github.com/immortalwrt/luci/) | `main`, `qt6`
| `luci-app-homebridge` | [shanglanxin/luci-app-homebridge](https://github.com/shanglanxin/luci-app-homebridge) | `main`, `qt6`
| `luci-app-ikoolproxy` | [1wrt/luci-app-ikoolproxy](https://github.com/1wrt/luci-app-ikoolproxy) | `main`, `qt6`
| `luci-app-iperf` | [Ysurac/openmptcprouter-feeds](https://github.com/Ysurac/openmptcprouter-feeds) | `main`, `qt6`
| `luci-app-mmconfig` | [erdoukki/luci-app-mmconfig](https://github.com/erdoukki/luci-app-mmconfig) | `main`, `qt6`
| `luci-app-modeminfo` | [4IceG/luci-app-modeminfo](https://github.com/4IceG/luci-app-modeminfo) | `main`, `qt6`
| `luci-app-msd_lite` | [ximiTech/luci-app-msd_lite](https://github.com/ximiTech/luci-app-msd_lite) | `main`, `qt6`
| `luci-app-netdata` | [sirpdboy/luci-app-netdata](https://github.com/sirpdboy/luci-app-netdata) | `main`, `qt6`
| `luci-app-nodogsplash` | [tty228/luci-app-nodogsplash](https://github.com/tty228/luci-app-nodogsplash) | `main`, `qt6`
| `luci-app-openclash` | [vernesong/OpenClash](https://github.com/vernesong/OpenClash) | `main`, `qt6`
| `luci-app-passwall` | [Openwrt-Passwall/openwrt-passwall](https://github.com/Openwrt-Passwall/openwrt-passwall) | `main`, `mt798x`, `qt6`, `qualcommax`
| `luci-app-passwall2` | [Openwrt-Passwall/openwrt-passwall2](https://github.com/Openwrt-Passwall/openwrt-passwall2) | `main`, `mt798x`, `qt6`, `qualcommax`
| `luci-app-podman` | [Zerogiven-OpenWRT-Packages/luci-app-podman](https://github.com/Zerogiven-OpenWRT-Packages/luci-app-podman) | `qualcommax`
| `luci-app-poweroff` | [esirplayground/luci-app-poweroff](https://github.com/esirplayground/luci-app-poweroff) | `main`, `qt6`
| `luci-app-pushbot` | [zzsj0928/luci-app-pushbot](https://github.com/zzsj0928/luci-app-pushbot) | `qt6`
| `luci-app-rtorrent` | [wolandmaster/luci-app-rtorrent](https://github.com/wolandmaster/luci-app-rtorrent) | `main`, `qt6`
| `luci-app-smartdns` | [pymumu/luci-app-smartdns](https://github.com/pymumu/luci-app-smartdns) | `main`, `mt798x`, `qt6`, `qualcommax`
| `luci-app-smartinfo` | [huajijam/luci-app-smartinfo](https://github.com/huajijam/luci-app-smartinfo) | `main`, `qt6`
| `luci-app-sms-tool` | [4IceG/luci-app-sms-tool](https://github.com/4IceG/luci-app-sms-tool) | `main`, `qt6`
| `luci-app-syncthing` | [immortalwrt/luci](https://github.com/immortalwrt/luci) | `main`, `qt6`
| `luci-app-tailscaler` | [zijieKwok/luci-app-tailscale1](https://github.com/zijieKwok/luci-app-tailscale1) | `main`, `qt6`
| `luci-app-taskplan` | [sirpdboy/luci-app-taskplan](https://github.com/sirpdboy/luci-app-taskplan) | `mt798x`, `qualcommax`
| `luci-app-tasks` | [jjm2473/openwrt-apps](https://github.com/jjm2473/openwrt-apps) | `main`, `qt6`
| `luci-app-tcpdump` | [KFERMercer/luci-app-tcpdump](https://github.com/KFERMercer/luci-app-tcpdump) | `main`, `qt6`
| `luci-app-tencentddns` | [Tencent-Cloud-Plugins/tencentcloud-openwrt-plugin-ddns](https://github.com/Tencent-Cloud-Plugins/tencentcloud-openwrt-plugin-ddns) | `main`, `qt6`
| `luci-app-tinyfilemanager` | [muink/luci-app-tinyfilemanager](https://github.com/muink/luci-app-tinyfilemanager) | `main`, `qt6`
| `luci-app-wechatpush` | [tty228/luci-app-wechatpush](https://github.com/tty228/luci-app-wechatpush) | `main`, `mt798x`
| `luci-app-wolplus` | [sundaqiang/openwrt-packages](https://github.com/sundaqiang/openwrt-packages) | `main`, `qt6`
| `luci-app-zerotier` | [zhengmz/luci-app-zerotier](https://github.com/zhengmz/luci-app-zerotier) | `mt798x`
| `luci-theme-Butterfly-dark` | [hyy-666/luci-theme-Butterfly-dark](https://github.com/hyy-666/luci-theme-Butterfly-dark) | `main`, `qt6`
| `luci-theme-alpha` | [derisamedia/luci-theme-alpha](https://github.com/derisamedia/luci-theme-alpha) | `main`, `qt6`
| `luci-theme-argon` | [jerrykuku/luci-theme-argon](https://github.com/jerrykuku/luci-theme-argon) | `qualcommax`, `main`, `mt798x`, `qt6`
| `luci-theme-argon-dark-mod` | [Leo-Jo-My/luci-theme-argon-dark-mod](https://github.com/Leo-Jo-My/luci-theme-argon-dark-mod) | `main`, `qt6`
| `luci-theme-aurora` | [eamonxg/luci-theme-aurora](https://github.com/eamonxg/luci-theme-aurora) | `qualcommax`
| `luci-theme-darkmatter` | [apollo-ng/luci-theme-darkmatter](https://github.com/apollo-ng/luci-theme-darkmatter) | `main`, `qt6`
| `luci-theme-neobird` | [thinktip/luci-theme-neobird](https://github.com/thinktip/luci-theme-neobird) | `main`, `qt6`
| `luci-wifidog` | [walkingsky/luci-wifidog](https://github.com/walkingsky/luci-wifidog) | `main`, `qt6`
| `lucky` | [gdy666/luci-app-lucky](https://github.com/gdy666/luci-app-lucky) | `main`, `mt798x`, `qualcommax`, `qt6`
| `msd_lite` | [ximiTech/msd_lite](https://github.com/ximiTech/msd_lite) | `main`, `qt6`
| `my-diy` | [hyy-666/my-diy](https://github.com/hyy-666/my-diy) | `main`, `qt6`
| `natter` | [Hyy2001X/AutoBuild-Packages](https://github.com/Hyy2001X/AutoBuild-Packages) | `main`, `qt6`
| `nezha-agent` | [Erope/openwrt_nezha](https://github.com/Erope/openwrt_nezha) | `main`, `qt6`
| `ngrokc` | [immortalwrt/packages](https://github.com/immortalwrt/packages) | `main`, `qt6`
| `openwrt-iptvhelper` | [riverscn/openwrt-iptvhelper](https://github.com/riverscn/openwrt-iptvhelper) | `main`, `qt6`
| `openwrt-passwall-packages` | [Openwrt-Passwall/openwrt-passwall-packages](https://github.com/Openwrt-Passwall/openwrt-passwall-packages) | `main`, `mt798x`, `qt6`, `qualcommax`
| `openwrt-smartdns` | [pymumu/openwrt-smartdns](https://github.com/pymumu/openwrt-smartdns) | `mt798x`
| `openwrt-subconverter` | [WYC-2020/openwrt-subconverter](https://github.com/WYC-2020/openwrt-subconverter) | `main`, `qt6`
| `shadow-tls` | [fw876/helloworld](https://github.com/fw876/helloworld) | `main`, `qt6`
| `smartdns` | [immortalwrt/packages](https://github.com/immortalwrt/packages) | `main`, `qt6`
| `sms-tool` | [4IceG/packages](https://github.com/4IceG/packages) | `main`, `qt6`
| `tailscale` | [openwrt/packages/](https://github.com/openwrt/packages/) | `mt798x`
| `v2dat` | [sbwml/luci-app-mosdns](https://github.com/sbwml/luci-app-mosdns) | `main`, `mt798x`, `qt6`, `qualcommax`
| `wrtbwmon` | [padavanonly/immortalwrt-mt798x-24.10](https://github.com/padavanonly/immortalwrt-mt798x-24.10) | `mt798x`
| `xmurp-ua` | [CHN-beta/xmurp-ua](https://github.com/CHN-beta/xmurp-ua) | `main`, `qt6`
| `zerotier` | [coolsnowwolf/packages](https://github.com/coolsnowwolf/packages) | `mt798x`

> 📌 仅列出各分支中实际采集的插件，已注释/归档的不在此列。

## 🔄 更新频率

插件每 **12 小时** 自动更新一次（北京时间 0:00 和 12:00）。

**最近更新**: 2026-07-07 22:07

## 🙏 致谢

感谢所有开源社区和开发者的贡献！

---

<div align="center">

**如果这个项目对你有帮助，请给一个 ⭐ Star 支持一下！**

</div>
