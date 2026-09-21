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

> 📌 **当前分支**: `mt798x`（本分支共收录 **20** 个插件）

| 插件名称 | 功能描述 | 上游来源 | 适用分支 |
|:---|:---|:---|:---|
| `arp-scan` | arp-scan 基于arping的局域网扫描工具 | [immortalwrt/packages](https://github.com/immortalwrt/packages) ([`6d68ffe`](https://github.com/immortalwrt/packages/commit/6d68ffeb270860be5d73ee2898d58e7c6019d9a4)) | `mt798x` |
| `cdnspeedtest` | cdnspeedtest CloudFlare CDN 测速 | [immortalwrt/packages](https://github.com/immortalwrt/packages) ([`6d68ffe`](https://github.com/immortalwrt/packages/commit/6d68ffeb270860be5d73ee2898d58e7c6019d9a4)) | `main`, `mt798x`, `qt6` |
| `geo2txt` | # MosDNS 插件化可定制的DNS转发器 | [sbwml/luci-app-mosdns](https://github.com/sbwml/luci-app-mosdns) ([`bd40245`](https://github.com/sbwml/luci-app-mosdns/commit/bd40245303cd0ba56804d49eed5dbc4be2a082ca)) | `main`, `mt798x`, `qualcommax`, `qt6` |
| `luci-app-argon-config` | luci-app-argon-conf | [jerrykuku/luci-app-argon-config](https://github.com/jerrykuku/luci-app-argon-config) ([`3e099a3`](https://github.com/jerrykuku/luci-app-argon-config/commit/3e099a37c3f71d0de677f1b6b0f4bffd57d91dac)) | `mt798x`, `qualcommax` |
| `luci-app-cloudflarespeedtest` | CloudflareSpeedtest Cloudflare Speedtest 插件 | [stevenjoezhang/luci-app-cloudflarespeedtest](https://github.com/stevenjoezhang/luci-app-cloudflarespeedtest) ([`aebbcbd`](https://github.com/stevenjoezhang/luci-app-cloudflarespeedtest/commit/aebbcbd686d61e0c9a0c44456d65bc5144395e01)) | `mt798x`, `qualcommax` |
| `luci-app-ddnsto` | luci-app-ddnsto | [linkease/ddnsto-openwrt-package](https://github.com/linkease/ddnsto-openwrt-package) ([`08d39bd`](https://github.com/linkease/ddnsto-openwrt-package/commit/08d39bd1993712f647002b097e589ef67fa8e7d8)) | `mt798x`, `qualcommax` |
| `luci-app-dnsfilter` | dnsfilter 基于dnsmasq的去广告程序 | [kiddin9/luci-app-dnsfilter](https://github.com/kiddin9/luci-app-dnsfilter) ([`3a49542`](https://github.com/kiddin9/luci-app-dnsfilter/commit/3a49542e566d8a95cb81b664a05aae29e1f534cf)) | `main`, `mt798x`, `qualcommax`, `qt6` |
| `luci-app-passwall` | luci-app-passwall | [solarflows/openwrt-passwall](https://github.com/solarflows/openwrt-passwall) ([`9801bda`](https://github.com/solarflows/openwrt-passwall/commit/9801bda8504d2c381e173c7c35171b79c2b4d709)) | `main`, `mt798x`, `qualcommax` |
| `luci-app-passwall2` | 规范化 PKG_RELEASE: 统一 release 为整数规范 | [Openwrt-Passwall/openwrt-passwall2](https://github.com/Openwrt-Passwall/openwrt-passwall2) ([`eb635e9`](https://github.com/Openwrt-Passwall/openwrt-passwall2/commit/eb635e913f665b73dd468a812498f8a442b6a518)) | `main`, `mt798x`, `qualcommax`, `qt6` |
| `luci-app-smartdns` | SmartDNS | [pymumu/luci-app-smartdns](https://github.com/pymumu/luci-app-smartdns) ([`581e5e8`](https://github.com/pymumu/luci-app-smartdns/commit/581e5e816d92d3a663b1b2e331e3f21685968cf1)) | `mt798x`, `qualcommax` |
| `luci-app-taskplan` | TaskPlan 定时任务计划管理器 | [sirpdboy/luci-app-taskplan](https://github.com/sirpdboy/luci-app-taskplan) ([`babd67a`](https://github.com/sirpdboy/luci-app-taskplan/commit/babd67a496a592ad9bd625fbc08db804cff45ab9)) | `mt798x`, `qualcommax` |
| `luci-app-wechatpush` | wechatpush 全能推送 | [tty228/luci-app-wechatpush](https://github.com/tty228/luci-app-wechatpush) ([`d9cba37`](https://github.com/tty228/luci-app-wechatpush/commit/d9cba373436f7e96592496f8ea392bf74d7fe0c2)) | `main`, `mt798x` |
| `luci-app-zerotier` | luci-app-zerotier | [zhengmz/luci-app-zerotier](https://github.com/zhengmz/luci-app-zerotier) ([`e35ead5`](https://github.com/zhengmz/luci-app-zerotier/commit/e35ead533d78f58203126693accd04f0d83c7f4b)) | `mt798x` |
| `luci-theme-argon` | luci-theme-argon | [solarflows/luci-theme-argon](https://github.com/solarflows/luci-theme-argon) ([`7327e1b`](https://github.com/solarflows/luci-theme-argon/commit/7327e1b6f9f3ab40288a583ca561b96152d53e64)) | `main`, `mt798x`, `qt6` |
| `lucky` | lucky 大吉多种功能结合体 | [gdy666/luci-app-lucky](https://github.com/gdy666/luci-app-lucky) ([`c173056`](https://github.com/gdy666/luci-app-lucky/commit/c1730565c6df4ab30d345cf73584f03f5cc7bc8f)) | `main`, `mt798x`, `qualcommax` |
| `openwrt-passwall-packages` | PassWall1&2 科学上网 | [Openwrt-Passwall/openwrt-passwall-packages](https://github.com/Openwrt-Passwall/openwrt-passwall-packages) ([`8809eaf`](https://github.com/Openwrt-Passwall/openwrt-passwall-packages/commit/8809eaf16367a7315620f1373aed3403bbc52eb0)) | `main`, `mt798x`, `qualcommax`, `qt6` |
| `smartdns` | SmartDNS | [pymumu/openwrt-smartdns](https://github.com/pymumu/openwrt-smartdns) ([`4be700d`](https://github.com/pymumu/openwrt-smartdns/commit/4be700dc3366275605a2a1996865d83ea9bb9a18)) | `mt798x` |
| `tailscale` | tailscale | [openwrt/packages/](https://github.com/openwrt/packages/) ([`6e46ddb`](https://github.com/openwrt/packages//commit/6e46ddbe2ddaee2b4381dbf1a5046ef942b8265b)) | `mt798x` |
| `wrtbwmon` | wrtbwmon | [padavanonly/immortalwrt-mt798x-24.10](https://github.com/padavanonly/immortalwrt-mt798x-24.10) ([`ec9ef10`](https://github.com/padavanonly/immortalwrt-mt798x-24.10/commit/ec9ef10efc65da1e6d1de4e2c043c0e13d08eed8)) | `mt798x` |
| `zerotier` | ZeroTier | [coolsnowwolf/packages](https://github.com/coolsnowwolf/packages) ([`0a3c1c1`](https://github.com/coolsnowwolf/packages/commit/0a3c1c1d100f1234c9269f7547e5482822a0845e)) | `mt798x` |

> 📌 仅列出各分支中实际采集的插件，已注释/归档的不在此列。

## 🔄 更新频率

插件每 **12 小时** 自动更新一次（北京时间 0:00 和 12:00）。

**最近更新**: 2026-09-21 17:43

## 🙏 致谢

感谢所有开源社区和开发者的贡献！

---

<div align="center">

**如果这个项目对你有帮助，请给一个 ⭐ Star 支持一下！**

</div>
