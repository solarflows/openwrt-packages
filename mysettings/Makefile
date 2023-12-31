include $(TOPDIR)/rules.mk

PKG_NAME:=mysettings
PKG_VERSION:=1
PKG_RELEASE:=1

include $(INCLUDE_DIR)/package.mk

define Package/mysettings/Default
  SECTION:=luci
  CATEGORY:=LuCI
  PKGARCH:=all
endef

define Package/mysettings
$(call Package/mysettings/Default)
  TITLE:=my diy.
  DEPENDS:= \
  +ipv6helper +nano-plus +vim-fuller +luci-app-advanced +luci-app-beardropper +luci-app-cpufreq \
  +luci-app-ddnsto +luci-app-dnsfilter +luci-app-frpc +luci-app-iptvhelper +luci-app-netspeedtest \
  +luci-app-lucky +luci-app-natter +luci-app-pushbot +luci-app-ttyd +luci-app-vnstat +luci-app-webadmin \
  +luci-app-wolplus +luci-app-zerotier \
  +luci-theme-argon +luci-app-argon-config +luci-theme-design +luci-app-design-config +luci-theme-darkmatter +luci-theme-material
endef

define Package/mysettings-arm
$(call Package/mysettings-rockchip/Default)
  TITLE:=arm devices config.
  PKGARCH:=aarch64
  DEPENDS:= \
  +lm-sensors +lm-sensors-detect +luci-app-poweroff
endef

define Package/mysettings-nas
$(call Package/mysettings-rockchip/Default)
  TITLE:=arm devices config.
  DEPENDS:= \
  +luci-app-autotimeset +luci-app-uhttpd +luci-app-vsftpd luci-app-bridge +luci-app-poweroff \
  
endef

define Package/mysettings-router
$(call Package/mysettings/Default)
  TITLE:=Router packages select.
  DEPENDS:= \
  +6rd +kmod-shortcut-fe-cm +luci-app-adguardhome +luci-app-autotimeset +luci-app-cloudflarespeedtest \
  +luci-app-commands +luci-app-ikoolproxy +luci-app-irqbalance +luci-app-msd_lite +luci-app-netspeedtest \
  +luci-app-onliner +luci-app-pppoe-relay +luci-app-ramfree +luci-app-smartdns +luci-app-tencentddns \
  +luci-app-vlmcsd +luci-app-wrtbwmon +luci-app-frps
  +luci-app-unblockmusic \
  +@PACKAGE_luci-app-unblockmusic_INCLUDE_UnblockNeteaseMusic_Go
endef

define Package/mysettings-proxy
$(call Package/mysettings/Default)
  TITLE:=Proxy packages
  DEPENDS:= \
  +luci-app-autoipsetadder +luci-app-mosdns +luci-app-wireguard +luci-app-openclash +luci-app-privoxy\
  +luci-app-passwall \
  +PACKAGE_luci-app-passwall_Iptables_Transparent_Proxy \
  +PACKAGE_luci-app-passwall_INCLUDE_Brook \
  +PACKAGE_luci-app-passwall_INCLUDE_Haproxy \
  +PACKAGE_luci-app-passwall_INCLUDE_Hysteria \
  +PACKAGE_luci-app-passwall_INCLUDE_NaiveProxy \
  +PACKAGE_luci-app-passwall_INCLUDE_Shadowsocks_Libev_Client \
  +PACKAGE_luci-app-passwall_INCLUDE_Shadowsocks_Libev_Server \
  +PACKAGE_luci-app-passwall_INCLUDE_Shadowsocks_Rust_Client \
  +PACKAGE_luci-app-passwall_INCLUDE_Shadowsocks_Rust_Server \
  +PACKAGE_luci-app-passwall_INCLUDE_ShadowsocksR_Libev_Client \
  +PACKAGE_luci-app-passwall_INCLUDE_ShadowsocksR_Libev_Server \
  +PACKAGE_luci-app-passwall_INCLUDE_Simple_Obfs \
  +PACKAGE_luci-app-passwall_INCLUDE_SingBox \
  +PACKAGE_luci-app-passwall_INCLUDE_Trojan_GO \
  +PACKAGE_luci-app-passwall_INCLUDE_Trojan_Plus \
  +PACKAGE_luci-app-passwall_INCLUDE_tuic_client \
  +PACKAGE_luci-app-passwall_INCLUDE_V2ray_Geodata \
  +PACKAGE_luci-app-passwall_INCLUDE_V2ray_Plugin \
  +PACKAGE_luci-app-passwall_INCLUDE_Xray \
  +luci-app-passwall2 \
  +@PACKAGE_luci-app-passwall2_INCLUDE_Brook \
  +@PACKAGE_luci-app-passwall2_INCLUDE_Hysteria \
  +@PACKAGE_luci-app-passwall2_INCLUDE_IPv6_Nat \
  +@PACKAGE_luci-app-passwall2_INCLUDE_NaiveProxy \
  +@PACKAGE_luci-app-passwall_INCLUDE_Shadowsocks_Rust_Client \
  +@PACKAGE_luci-app-passwall_INCLUDE_Shadowsocks_Rust_Server \
  +@PACKAGE_luci-app-passwall2_INCLUDE_ShadowsocksR_Libev_Server \
  +@PACKAGE_luci-app-passwall2_INCLUDE_Shadowsocks_Libev_Server \
  +@PACKAGE_luci-app-passwall2_INCLUDE_Shadowsocks_Rust_Server \
  +@PACKAGE_luci-app-passwall2_INCLUDE_tuic_client \
  +@PACKAGE_luci-app-passwall2_Iptables_Transparent_Proxy \
  +@PACKAGE_luci-app-passwall2_Nftables_Transparent_Proxy \
  +luci-app-ssr-plus \
  +@PACKAGE_luci-app-ssr-plus_INCLUDE_Shadowsocks_Rust_Client \
  +@PACKAGE_luci-app-ssr-plus_INCLUDE_Shadowsocks_Rust_Server \
  +@PACKAGE_luci-app-ssr-plus_INCLUDE_Hysteria \
  +@PACKAGE_luci-app-ssr-plus_INCLUDE_IPT2Socks \
  +@PACKAGE_luci-app-ssr-plus_INCLUDE_Kcptun \
  +@PACKAGE_luci-app-ssr-plus_INCLUDE_NaiveProxy \
  +@PACKAGE_luci-app-ssr-plus_INCLUDE_Redsocks2 \
  +@PACKAGE_luci-app-ssr-plus_INCLUDE_Shadowsocks_V2ray_Plugin \
  +@PACKAGE_luci-app-ssr-plus_INCLUDE_ShadowsocksR_Libev_Server \
  +@PACKAGE_luci-app-ssr-plus_INCLUDE_Trojan
endef

define Build/Prepare
endef

define Build/Configure
endef

define Build/Compile
endef

$(eval $(call BuildPackage,mysettings))
$(eval $(call BuildPackage,mysettings-router))
$(eval $(call BuildPackage,mysettings-proxy))
