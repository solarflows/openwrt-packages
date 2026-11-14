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

> 📌 **当前分支**: `qualcommax`（本分支共收录 **16** 个插件）

| 插件名称 | 功能描述 | 上游来源 | 适用分支 |
|:---|:---|:---|:---|
| `geo2txt` | # MosDNS 插件化可定制的DNS转发器 | [sbwml/luci-app-mosdns](https://github.com/sbwml/luci-app-mosdns) ([`dbdd91a`](https://github.com/sbwml/luci-app-mosdns/commit/dbdd91ab8ac8b079b6a3ca1a48d99e970d17111b)) | `main`, `mt798x`, `qualcommax`, `qt6` |
| `luci-app-argon-config` | luci-app-argon-conf | [jerrykuku/luci-app-argon-config](https://github.com/jerrykuku/luci-app-argon-config) ([`9f096c9`](https://github.com/jerrykuku/luci-app-argon-config/commit/9f096c916c16be8075610dd137d3b18982f81f1e)) | `mt798x`, `qualcommax` |
| `luci-app-aurora-config` | luci-app-aurora-conf | [eamonxg/luci-app-aurora-config](https://github.com/eamonxg/luci-app-aurora-config) ([`a5299ce`](https://github.com/eamonxg/luci-app-aurora-config/commit/a5299ce0144859f47683ec3bc40805bf616f534f)) | `qualcommax` |
| `luci-app-cloudflarespeedtest` | CloudflareSpeedtest Cloudflare Speedtest 插件 | [stevenjoezhang/luci-app-cloudflarespeedtest](https://github.com/stevenjoezhang/luci-app-cloudflarespeedtest) ([`3e19734`](https://github.com/stevenjoezhang/luci-app-cloudflarespeedtest/commit/3e1973406f4ea00b8e4120160ed4acae82fd0d0d)) | `mt798x`, `qualcommax` |
| `luci-app-ddnsto` | luci-app-ddnsto | [linkease/ddnsto-openwrt-package](https://github.com/linkease/ddnsto-openwrt-package) ([`86a548c`](https://github.com/linkease/ddnsto-openwrt-package/commit/86a548c935c3f6e0d56ff237b32cd4d61175f336)) | `mt798x`, `qualcommax` |
| `luci-app-dnsfilter` | dnsfilter 基于dnsmasq的去广告程序 | [kiddin9/luci-app-dnsfilter](https://github.com/kiddin9/luci-app-dnsfilter) ([`3a49542`](https://github.com/kiddin9/luci-app-dnsfilter/commit/3a49542e566d8a95cb81b664a05aae29e1f534cf)) | `main`, `mt798x`, `qualcommax`, `qt6` |
| `luci-app-passwall` | luci-app-passwall | [solarflows/openwrt-passwall](https://github.com/solarflows/openwrt-passwall) ([`65b0ccc`](https://github.com/solarflows/openwrt-passwall/commit/65b0ccc129acdb56de1f97325c23b17cdf84264f)) | `main`, `mt798x`, `qualcommax`, `qt6` |
| `luci-app-passwall2` | 规范化 PKG_RELEASE: 统一 release 为整数规范 | [Openwrt-Passwall/openwrt-passwall2](https://github.com/Openwrt-Passwall/openwrt-passwall2) ([`dd77a23`](https://github.com/Openwrt-Passwall/openwrt-passwall2/commit/dd77a236c7ee46b2b3899e1951668fdc88c13c57)) | `main`, `mt798x`, `qualcommax`, `qt6` |
| `luci-app-podman` | luci-app-podman | [Zerogiven-OpenWRT-Packages/luci-app-podman](https://github.com/Zerogiven-OpenWRT-Packages/luci-app-podman) ([`c59635b`](https://github.com/Zerogiven-OpenWRT-Packages/luci-app-podman/commit/c59635b0cceb9c418b5219812c55d937443a39bc)) | `qualcommax` |
| `luci-app-smartdns` | SmartDNS | [pymumu/luci-app-smartdns](https://github.com/pymumu/luci-app-smartdns) ([`8f0c702`](https://github.com/pymumu/luci-app-smartdns/commit/8f0c70281189fbdc1cd102bc134c1f6cac3a4640)) | `mt798x`, `qualcommax` |
| `luci-app-taskplan` | TaskPlan 定时任务计划管理器 | [sirpdboy/luci-app-taskplan](https://github.com/sirpdboy/luci-app-taskplan) ([`babd67a`](https://github.com/sirpdboy/luci-app-taskplan/commit/babd67a496a592ad9bd625fbc08db804cff45ab9)) | `mt798x`, `qualcommax` |
| `luci-theme-argon` | luci-theme-argon | [jerrykuku/luci-theme-argon](https://github.com/jerrykuku/luci-theme-argon) ([`a121960`](https://github.com/jerrykuku/luci-theme-argon/commit/a121960d2adbe9d57333db3f4e045467dcb375c9)) | `qualcommax` |
| `luci-theme-aurora` | luci-theme-aurora | [eamonxg/luci-theme-aurora](https://github.com/eamonxg/luci-theme-aurora) ([`298dbcc`](https://github.com/eamonxg/luci-theme-aurora/commit/298dbcc74ddf820923a51285fb0826d429e5d7ca)) | `qualcommax` |
| `lucky` | lucky 大吉多种功能结合体 | [gdy666/luci-app-lucky](https://github.com/gdy666/luci-app-lucky) ([`b07f65c`](https://github.com/gdy666/luci-app-lucky/commit/b07f65c28bb5fa3da1fea4b8af5ce24a1488e79a)) | `main`, `mt798x`, `qualcommax` |
| `openwrt-passwall-packages` | PassWall1&2 科学上网 | [Openwrt-Passwall/openwrt-passwall-packages](https://github.com/Openwrt-Passwall/openwrt-passwall-packages) ([`b094b79`](https://github.com/Openwrt-Passwall/openwrt-passwall-packages/commit/b094b79c32ac4e4de3113a5c44971c6182eee535)) | `main`, `mt798x`, `qualcommax`, `qt6` |
| `zapret2` | zapret2 DPI 绕过核心与 LuCI 控制面板 | [damocjwj/openwrt-zapret2](https://github.com/damocjwj/openwrt-zapret2) ([`87868df`](https://github.com/damocjwj/openwrt-zapret2/commit/87868dfaf81608fd87a37ef94ad64068188ab6dc)) | `qualcommax` |

> 📌 仅列出各分支中实际采集的插件，已注释/归档的不在此列。

## 🔄 更新频率

插件每 **12 小时** 自动更新一次（北京时间 0:00 和 12:00）。

**最近更新**: 2026-11-14 04:40

## 🙏 致谢

感谢所有开源社区和开发者的贡献！

---

<div align="center">

**如果这个项目对你有帮助，请给一个 ⭐ Star 支持一下！**

</div>
