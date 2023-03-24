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
  +luci-app-onliner \+luci-app-openclash +iptables-mod-tproxy +iptables-mod-extra +luci-app-openvpn \
  +luci-app-openvpn-server +luci-app-passwall \
  +luci-app-passwall_Iptables_Transparent_Proxy=y \
  +luci-app-passwall_INCLUDE_Brook=y \
  +luci-app-passwall_INCLUDE_ChinaDNS_NG=y \
  +luci-app-passwall_INCLUDE_Haproxy=y \
  +luci-app-passwall_INCLUDE_Hysteria=y \
  +luci-app-passwall_INCLUDE_NaiveProxy=y \
  +luci-app-passwall_INCLUDE_Shadowsocks_Libev_Client=y \
  +luci-app-passwall_INCLUDE_Shadowsocks_Libev_Server=y \
  +luci-app-passwall_INCLUDE_Shadowsocks_Rust_Client=y \
  +luci-app-passwall_INCLUDE_Shadowsocks_Rust_Server=y \
  +luci-app-passwall_INCLUDE_ShadowsocksR_Libev_Client=y \
  +luci-app-passwall_INCLUDE_ShadowsocksR_Libev_Server=y \
  +luci-app-passwall_INCLUDE_Simple_Obfs=y \
  +luci-app-passwall_INCLUDE_Trojan_GO=y \
  +luci-app-passwall_INCLUDE_Trojan_Plus=y \
  +luci-app-passwall_INCLUDE_V2ray=y \
  +luci-app-passwall_INCLUDE_V2ray_Geodata=y \
  +luci-app-passwall_INCLUDE_V2ray_Plugin=y \
  +luci-app-passwall_INCLUDE_Xray=y \
  +luci-app-pgyvpn +luci-app-phtunnel +luci-app-polipo +luci-app-poweroff +luci-app-pppoe-relay \
  +luci-app-privoxy +luci-app-pushbot +luci-app-qBittorrent-Enhanced-Edition_dynamic +luci-app-qbittorrent-simple_dynamic \
  +luci-app-ramfree +luci-app-rclone_INCLUDE_rclone-webui +luci-app-rclone_INCLUDE_rclone-ng +luci-app-smartdns +luci-app-ssr-plus \
  +luci-app-ssr-plus_INCLUDE_Shadowsocks_Rust_Client=y \
  +luci-app-ssr-plus_INCLUDE_Shadowsocks_Rust_Server=y \
  +luci-app-ssr-plus_INCLUDE_Xray=y \
  +luci-app-ssr-plus_INCLUDE_ChinaDNS_NG=y \
  +luci-app-ssr-plus_INCLUDE_Hysteria=y \
  +luci-app-ssr-plus_INCLUDE_IPT2Socks=y \
  +luci-app-ssr-plus_INCLUDE_Kcptun=y \
  +luci-app-ssr-plus_INCLUDE_NaiveProxy=y \
  +luci-app-ssr-plus_INCLUDE_Redsocks2=y \
  +luci-app-ssr-plus_INCLUDE_Shadowsocks_Simple_Obfs=y \
  +luci-app-ssr-plus_INCLUDE_Shadowsocks_V2ray_Plugin=y \
  +luci-app-ssr-plus_INCLUDE_ShadowsocksR_Libev_Client=y \
  +luci-app-ssr-plus_INCLUDE_ShadowsocksR_Libev_Server=y \
  +luci-app-ssr-plus_INCLUDE_Trojan=y \
  +luci-app-tencentddns +luci-app-tinyproxy +luci-app-turboacc \
  +luci-app-turboacc_INCLUDE_OFFLOADING=y \
  +luci-app-turboacc_INCLUDE_BBR_CCA=y \
  +luci-app-turboacc_INCLUDE_PDNSD=y \
  +luci-app-turboacc_INCLUDE_DNSFORWARDER=y \
  +luci-app-turboacc_INCLUDE_DNSPROXY=y \
  +luci-app-uhttpd +luci-app-unblockmusic \
  +luci-app-unblockmusic_INCLUDE_UnblockNeteaseMusic_Go=y \
  +luci-app-unblockmusic_INCLUDE_UnblockNeteaseMusic_NodeJ=yS \
  +luci-app-upnp +luci-app-vlmcsd +luci-app-vnstat +luci-app-vsftpd +luci-app-webadmin \
  +luci-app-webd_INCLUDE_WEBD_BINARY=y \
  +luci-app-wireguard +luci-app-wol +luci-app-wolplus +luci-app-wrtbwmon +luci-app-zerotier \
  +luci-theme-argon +luci-theme-bootstrap +luci-theme-darkmatter +luci-theme-design +luci-theme-material +luci-theme-neobird \
  +6rd +6to4 +nano-plus +vim-fuller +kmod-shortcut-fe-cm=y
endef

define Package/hyy-router/description
	Language Support Packages.
endef

define Build/Compile
endef

define Package/hyy-router/install
endef

$(eval $(call BuildPackage,hyy-router))
