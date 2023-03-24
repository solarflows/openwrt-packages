include $(TOPDIR)/rules.mk

PKG_NAME:=hyy
PKG_VERSION:=1
PKG_RELEASE:=1

include $(INCLUDE_DIR)/package.mk

define Package/hyy/Default
  SECTION:=luci
  CATEGORY:=LuCI
  PKGARCH:=all
endef

define Package/hyy
$(call Package/hyy/Default)
  TITLE:=needed package.
  DEPENDS:=+nano-plus +vim-fuller
endef

define Package/hyy-router
$(call Package/hyy/Default)
  TITLE:=Router packages select.
  DEPENDS:= \
  +luci-app-accesscontrol +luci-app-adguardhome +luci-app-advanced +luci-app-argon-config \
  +luci-app-arpbind +luci-app-autoipsetadder +luci-app-autoreboot +luci-app-autotimeset \
  +luci-app-beardropper +luci-app-cloudflarespeedtest +luci-app-commands +luci-app-cpufreq \
  +luci-app-ddns +luci-app-ddnsto +luci-app-design-config +luci-app-dnsfilter +luci-app-filetransfer \
  +luci-app-frpc +luci-app-frps +luci-app-ikoolproxy +luci-app-ipsec-server \
  +luci-app-ipsec-vpnd +luci-app-iptvhelper +luci-app-irqbalance +luci-app-lucky +luci-app-minidlna \
  +luci-app-mosdns +luci-app-msd_lite +luci-app-natter +luci-app-netspeedtest +luci-app-nlbwmon \
  +luci-app-onliner +luci-app-openclash +iptables-mod-tproxy +iptables-mod-extra +luci-app-openvpn \
  +luci-app-openvpn-server \
  +luci-app-pgyvpn +luci-app-phtunnel +luci-app-polipo +luci-app-poweroff +luci-app-pppoe-relay \
  +luci-app-privoxy +luci-app-pushbot +luci-app-ramfree +luci-app-smartdns \
  +luci-app-tencentddns +luci-app-tinyproxy +luci-app-turboacc \
  +@CONFIG_PACKAGE_luci-app-turboacc_INCLUDE_OFFLOADING \
  +@CONFIG_PACKAGE_luci-app-turboacc_INCLUDE_BBR_CCA \
  +@CONFIG_PACKAGE_luci-app-turboacc_INCLUDE_PDNSD \
  +@CONFIG_PACKAGE_luci-app-turboacc_INCLUDE_DNSFORWARDER \
  +@CONFIG_PACKAGE_luci-app-turboacc_INCLUDE_DNSPROXY \
  +luci-app-uhttpd +luci-app-unblockmusic \
  +@CONFIG_PACKAGE_luci-app-unblockmusic_INCLUDE_UnblockNeteaseMusic_Go \
  +@CONFIG_PACKAGE_luci-app-unblockmusic_INCLUDE_UnblockNeteaseMusic_NodeJS \
  +luci-app-upnp +luci-app-vlmcsd +luci-app-vnstat +luci-app-vsftpd +luci-app-webadmin \
  +luci-app-webd_INCLUDE_WEBD_BINARY \
  +luci-app-wireguard +luci-app-wol +luci-app-wolplus +luci-app-wrtbwmon +luci-app-zerotier \
  +luci-theme-argon +luci-theme-bootstrap +luci-theme-darkmatter +luci-theme-design +luci-theme-material +luci-theme-neobird \
  +6rd +6to4 +kmod-shortcut-fe-cm
endef

define Package/hyy-router/description
	Language Support Packages.
endef

define Package/hyy-proxy
$(call Package/hyy/Default)
  TITLE:=Proxy packages
  DEPENDS:=+luci-app-passwall \
  +@CONFIG_PACKAGE_luci-app-passwall_Iptables_Transparent_Proxy \
  +@CONFIG_PACKAGE_luci-app-passwall_INCLUDE_Brook \
  +@CONFIG_PACKAGE_luci-app-passwall_INCLUDE_ChinaDNS_NG \
  +@CONFIG_PACKAGE_luci-app-passwall_INCLUDE_Haproxy \
  +@CONFIG_PACKAGE_luci-app-passwall_INCLUDE_Hysteria \
  +@CONFIG_PACKAGE_luci-app-passwall_INCLUDE_NaiveProxy \
  +@CONFIG_PACKAGE_luci-app-passwall_INCLUDE_Shadowsocks_Libev_Client \
  +@CONFIG_PACKAGE_luci-app-passwall_INCLUDE_Shadowsocks_Libev_Server \
  +@CONFIG_PACKAGE_luci-app-passwall_INCLUDE_Shadowsocks_Rust_Client \
  +@CONFIG_PACKAGE_luci-app-passwall_INCLUDE_Shadowsocks_Rust_Server \
  +@CONFIG_PACKAGE_luci-app-passwall_INCLUDE_ShadowsocksR_Libev_Client \
  +@CONFIG_PACKAGE_luci-app-passwall_INCLUDE_ShadowsocksR_Libev_Server \
  +@CONFIG_PACKAGE_luci-app-passwall_INCLUDE_Simple_Obfs \
  +@CONFIG_PACKAGE_luci-app-passwall_INCLUDE_Trojan_GO \
  +@CONFIG_PACKAGE_luci-app-passwall_INCLUDE_Trojan_Plus \
  +@CONFIG_PACKAGE_luci-app-passwall_INCLUDE_V2ray \
  +@CONFIG_PACKAGE_luci-app-passwall_INCLUDE_V2ray_Geodata \
  +@CONFIG_PACKAGE_luci-app-passwall_INCLUDE_V2ray_Plugin \
  +@CONFIG_PACKAGE_luci-app-passwall_INCLUDE_Xray \
  +luci-app-ssr-plus \
  +@CONFIG_PACKAGE_luci-app-ssr-plus_INCLUDE_Shadowsocks_Rust_Client \
  +@CONFIG_PACKAGE_luci-app-ssr-plus_INCLUDE_Shadowsocks_Rust_Server \
  +@CONFIG_PACKAGE_luci-app-ssr-plus_INCLUDE_Xray \
  +@CONFIG_PACKAGE_luci-app-ssr-plus_INCLUDE_ChinaDNS_NG \
  +@CONFIG_PACKAGE_luci-app-ssr-plus_INCLUDE_Hysteria \
  +@CONFIG_PACKAGE_luci-app-ssr-plus_INCLUDE_IPT2Socks \
  +@CONFIG_PACKAGE_luci-app-ssr-plus_INCLUDE_Kcptun \
  +@CONFIG_PACKAGE_luci-app-ssr-plus_INCLUDE_NaiveProxy \
  +@CONFIG_PACKAGE_luci-app-ssr-plus_INCLUDE_Redsocks2 \
  +@CONFIG_PACKAGE_luci-app-ssr-plus_INCLUDE_Shadowsocks_Simple_Obfs \
  +@CONFIG_PACKAGE_luci-app-ssr-plus_INCLUDE_Shadowsocks_V2ray_Plugin \
  +@CONFIG_PACKAGE_luci-app-ssr-plus_INCLUDE_ShadowsocksR_Libev_Client \
  +@CONFIG_PACKAGE_luci-app-ssr-plus_INCLUDE_ShadowsocksR_Libev_Server \
  +@CONFIG_PACKAGE_luci-app-ssr-plus_INCLUDE_Trojan \
endef

define Build/Prepare
endef

define Build/Configure
endef

define Build/Compile
endef

define Package/hyy/install
endef

define Package/hyy-router/install
endef

define Package/hyy-proxy/install
endef

$(eval $(call BuildPackage,hyy))
$(eval $(call BuildPackage,hyy-router))
$(eval $(call BuildPackage,hyy-proxy))
