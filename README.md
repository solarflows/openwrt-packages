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

> 📌 **当前分支**: `qualcommax`（本分支共收录 **15** 个插件）

| 插件名称 | 功能描述 | 上游来源 | 适用分支 |
|:---|:---|:---|:---|
| `geo2txt` | # MosDNS 插件化可定制的DNS转发器 | [sbwml/luci-app-mosdns](https://github.com/sbwml/luci-app-mosdns) ([`bd40245`](https://github.com/sbwml/luci-app-mosdns/commit/bd40245303cd0ba56804d49eed5dbc4be2a082ca)) | `main`, `mt798x`, `qualcommax`, `qt6` |
| `luci-app-argon-config` | luci-app-argon-conf | [jerrykuku/luci-app-argon-config](https://github.com/jerrykuku/luci-app-argon-config) ([`3e099a3`](https://github.com/jerrykuku/luci-app-argon-config/commit/3e099a37c3f71d0de677f1b6b0f4bffd57d91dac)) | `mt798x`, `qualcommax` |
| `luci-app-aurora-config` | luci-app-aurora-conf | [eamonxg/luci-app-aurora-config](https://github.com/eamonxg/luci-app-aurora-config) ([`a5299ce`](https://github.com/eamonxg/luci-app-aurora-config/commit/a5299ce0144859f47683ec3bc40805bf616f534f)) | `qualcommax` |
| `luci-app-cloudflarespeedtest` | CloudflareSpeedtest Cloudflare Speedtest 插件 | [stevenjoezhang/luci-app-cloudflarespeedtest](https://github.com/stevenjoezhang/luci-app-cloudflarespeedtest) ([`aebbcbd`](https://github.com/stevenjoezhang/luci-app-cloudflarespeedtest/commit/aebbcbd686d61e0c9a0c44456d65bc5144395e01)) | `mt798x`, `qualcommax` |
| `luci-app-ddnsto` | luci-app-ddnsto | [linkease/ddnsto-openwrt-package](https://github.com/linkease/ddnsto-openwrt-package) ([`9cf4305`](https://github.com/linkease/ddnsto-openwrt-package/commit/9cf4305b5789286569fcfd81f5149316203f7c29)) | `mt798x`, `qualcommax` |
| `luci-app-dnsfilter` | dnsfilter 基于dnsmasq的去广告程序 | [kiddin9/luci-app-dnsfilter](https://github.com/kiddin9/luci-app-dnsfilter) ([`3a49542`](https://github.com/kiddin9/luci-app-dnsfilter/commit/3a49542e566d8a95cb81b664a05aae29e1f534cf)) | `main`, `mt798x`, `qualcommax`, `qt6` |
| `luci-app-passwall` | luci-app-passwall | [solarflows/openwrt-passwall](https://github.com/solarflows/openwrt-passwall) ([`e8b6847`](https://github.com/solarflows/openwrt-passwall/commit/e8b684746eeff558bd69b6ed1f13ee76cbed503b)) | `main`, `mt798x`, `qualcommax` |
| `luci-app-passwall2` | 规范化 PKG_RELEASE: 统一 release 为整数规范 | [Openwrt-Passwall/openwrt-passwall2](https://github.com/Openwrt-Passwall/openwrt-passwall2) ([`eb635e9`](https://github.com/Openwrt-Passwall/openwrt-passwall2/commit/eb635e913f665b73dd468a812498f8a442b6a518)) | `main`, `mt798x`, `qualcommax`, `qt6` |
| `luci-app-podman` | luci-app-podman | [Zerogiven-OpenWRT-Packages/luci-app-podman](https://github.com/Zerogiven-OpenWRT-Packages/luci-app-podman) ([`ee37071`](https://github.com/Zerogiven-OpenWRT-Packages/luci-app-podman/commit/ee370717f2dd261a4f375ce3a14f81921949b8c8)) | `qualcommax` |
| `luci-app-smartdns` | SmartDNS | [pymumu/luci-app-smartdns](https://github.com/pymumu/luci-app-smartdns) ([`581e5e8`](https://github.com/pymumu/luci-app-smartdns/commit/581e5e816d92d3a663b1b2e331e3f21685968cf1)) | `mt798x`, `qualcommax` |
| `luci-app-taskplan` | TaskPlan 定时任务计划管理器 | [sirpdboy/luci-app-taskplan](https://github.com/sirpdboy/luci-app-taskplan) ([`babd67a`](https://github.com/sirpdboy/luci-app-taskplan/commit/babd67a496a592ad9bd625fbc08db804cff45ab9)) | `mt798x`, `qualcommax` |
| `luci-theme-argon` | luci-theme-argon | [jerrykuku/luci-theme-argon](https://github.com/jerrykuku/luci-theme-argon) ([`182294b`](https://github.com/jerrykuku/luci-theme-argon/commit/182294b07f985088b40610f80ec867fe167e41db)) | `qualcommax` |
| `luci-theme-aurora` | luci-theme-aurora | [eamonxg/luci-theme-aurora](https://github.com/eamonxg/luci-theme-aurora) ([`84c27b6`](https://github.com/eamonxg/luci-theme-aurora/commit/84c27b66952e6fc4be60128067a6b88bfd34afb5)) | `qualcommax` |
| `lucky` | lucky 大吉多种功能结合体 | [gdy666/luci-app-lucky](https://github.com/gdy666/luci-app-lucky) ([`c173056`](https://github.com/gdy666/luci-app-lucky/commit/c1730565c6df4ab30d345cf73584f03f5cc7bc8f)) | `main`, `mt798x`, `qualcommax` |
| `openwrt-passwall-packages` | PassWall1&2 科学上网 | [Openwrt-Passwall/openwrt-passwall-packages](https://github.com/Openwrt-Passwall/openwrt-passwall-packages) ([`8809eaf`](https://github.com/Openwrt-Passwall/openwrt-passwall-packages/commit/8809eaf16367a7315620f1373aed3403bbc52eb0)) | `main`, `mt798x`, `qualcommax`, `qt6` |

> 📌 仅列出各分支中实际采集的插件，已注释/归档的不在此列。

## 🔄 更新频率

插件每 **12 小时** 自动更新一次（北京时间 0:00 和 12:00）。

**最近更新**: 2026-09-23 04:44

## 🙏 致谢

感谢所有开源社区和开发者的贡献！

---

<div align="center">

**如果这个项目对你有帮助，请给一个 ⭐ Star 支持一下！**

</div>
