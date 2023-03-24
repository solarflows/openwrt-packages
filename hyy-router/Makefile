include $(TOPDIR)/rules.mk

PKG_NAME:=hyy-router
PKG_VERSION:=2
PKG_RELEASE:=37
PKG_LICENSE:=GPLv3
PKG_LICENSE_FILES:=LICENSE

include $(INCLUDE_DIR)/package.mk

define Package/hyy-router
  SECTION:=luci
  CATEGORY:=LuCI
  TITLE:=Router packages select.
  PKGARCH:=all
  DEPENDS:= \
  +luci-app-accesscontrol +luci-app-adguardhome +luci-app-advanced +luci-app-argon-config \
  +luci-app-arpbind +luci-app-autoipsetadder +luci-app-autoreboot +luci-app-autotimeset \
  +luci-app-beardropper +luci-app-cloudflarespeedtest +luci-app-commands +luci-app-cpufreq \
  +luci-app-ddns +luci-app-ddnsto +luci-app-design-config +luci-app-dnsfilter +luci-app-filetransfer \
  +luci-app-firewall +luci-app-frpc +luci-app-frps +luci-app-ikoolproxy +luci-app-ipsec-server \
  +luci-app-ipsec-vpnd +luci-app-iptvhelper +luci-app-irqbalance +luci-app-lucky +luci-app-minidlna \
  +luci-app-mosdns +luci-app-msd_lite +luci-app-natter +luci-app-netspeedtest +luci-app-nlbwmon \
  +luci-app-onliner +luci-app-openclash +iptables-mod-tproxy +iptables-mod-extra +luci-app-openvpn \
  +luci-app-openvpn-server +luci-app-passwall \
  +luci-app-passwall_Iptables_Transparent_Proxy \
  +luci-app-passwall_INCLUDE_Brook \
  +luci-app-passwall_INCLUDE_ChinaDNS_NG \
  +luci-app-passwall_INCLUDE_Haproxy \
  +luci-app-passwall_INCLUDE_Hysteria \
  +luci-app-passwall_INCLUDE_NaiveProxy \
  +luci-app-passwall_INCLUDE_Shadowsocks_Libev_Client \
  +luci-app-passwall_INCLUDE_Shadowsocks_Libev_Server \
  +luci-app-passwall_INCLUDE_Shadowsocks_Rust_Client \
  +luci-app-passwall_INCLUDE_Shadowsocks_Rust_Server \
  +luci-app-passwall_INCLUDE_ShadowsocksR_Libev_Client \
  +luci-app-passwall_INCLUDE_ShadowsocksR_Libev_Server \
  +luci-app-passwall_INCLUDE_Simple_Obfs \
  +luci-app-passwall_INCLUDE_Trojan_GO \
  +luci-app-passwall_INCLUDE_Trojan_Plus \
  +luci-app-passwall_INCLUDE_V2ray \
  +luci-app-passwall_INCLUDE_V2ray_Geodata \
  +luci-app-passwall_INCLUDE_V2ray_Plugin \
  +luci-app-passwall_INCLUDE_Xray \
  +luci-app-pgyvpn +luci-app-phtunnel +luci-app-polipo +luci-app-poweroff +luci-app-pppoe-relay \
  +luci-app-privoxy +luci-app-pushbot +luci-app-ramfree +luci-app-smartdns +luci-app-ssr-plus \
  +luci-app-ssr-plus_INCLUDE_Shadowsocks_Rust_Client \
  +luci-app-ssr-plus_INCLUDE_Shadowsocks_Rust_Server \
  +luci-app-ssr-plus_INCLUDE_Xray \
  +luci-app-ssr-plus_INCLUDE_ChinaDNS_NG \
  +luci-app-ssr-plus_INCLUDE_Hysteria \
  +luci-app-ssr-plus_INCLUDE_IPT2Socks \
  +luci-app-ssr-plus_INCLUDE_Kcptun \
  +luci-app-ssr-plus_INCLUDE_NaiveProxy \
  +luci-app-ssr-plus_INCLUDE_Redsocks2 \
  +luci-app-ssr-plus_INCLUDE_Shadowsocks_Simple_Obfs \
  +luci-app-ssr-plus_INCLUDE_Shadowsocks_V2ray_Plugin \
  +luci-app-ssr-plus_INCLUDE_ShadowsocksR_Libev_Client \
  +luci-app-ssr-plus_INCLUDE_ShadowsocksR_Libev_Server \
  +luci-app-ssr-plus_INCLUDE_Trojan \
  +luci-app-tencentddns +luci-app-tinyproxy +luci-app-turboacc \
  +luci-app-turboacc_INCLUDE_OFFLOADING \
  +luci-app-turboacc_INCLUDE_BBR_CCA \
  +luci-app-turboacc_INCLUDE_PDNSD \
  +luci-app-turboacc_INCLUDE_DNSFORWARDER \
  +luci-app-turboacc_INCLUDE_DNSPROXY \
  +luci-app-uhttpd +luci-app-unblockmusic \
  +luci-app-unblockmusic_INCLUDE_UnblockNeteaseMusic_Go \
  +luci-app-unblockmusic_INCLUDE_UnblockNeteaseMusic_NodeJS \
  +luci-app-upnp +luci-app-vlmcsd +luci-app-vnstat +luci-app-vsftpd +luci-app-webadmin \
  +luci-app-webd_INCLUDE_WEBD_BINARY \
  +luci-app-wireguard +luci-app-wol +luci-app-wolplus +luci-app-wrtbwmon +luci-app-zerotier \
  +luci-theme-argon +luci-theme-bootstrap +luci-theme-darkmatter +luci-theme-design +luci-theme-material +luci-theme-neobird \
  +6rd +6to4 +nano-plus +vim-fuller +kmod-shortcut-fe-cm
endef

define Package/hyy-router/description
	Language Support Packages.
endef

define Build/Compile
endef

define Package/hyy-router/install
endef

$(eval $(call BuildPackage,hyy-router))
