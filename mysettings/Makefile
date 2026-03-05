include $(TOPDIR)/rules.mk

PKG_NAME:=mysettings
PKG_VERSION:=1
PKG_RELEASE:=1

include $(INCLUDE_DIR)/package.mk

define Package/mysettings
  TITLE:=my diy.
  SECTION:=luci
  CATEGORY:=LuCI
  DEPENDS:= \
  +nano-plus +vim-fuller +luci-app-advanced +luci-app-autotimeset +luci-app-beardropper +luci-app-pushbot +luci-app-ttyd +luci-app-vnstat +luci-app-wolplus +luci-theme-material
endef

# ifeq ($(CONFIG_TARGET_rockchip),y)
#     DEPENDS+=kmod-drm-rockchip
# endif

# ifeq ($(ARCH),aarch64)
# CONFIGURE_ARGS += --with-aarch64
# else ifeq ($(ARCH),arm)
# CONFIGURE_ARGS += --with-arm
# endif

define Package/$(PKG_NAME)/config
menu "Configuration"

config CONFIG_PACKAGE_$(PKG_NAME)_Router
  bool "Router Packages Section"
  select PACKAGE_6rd
  select PACKAGE_ipv6helper
  select PACKAGE_kmod-shortcut-fe-cm
  select PACKAGE_luci-app-adguardhome
  select PACKAGE_luci-app-commands
  select PACKAGE_luci-app-dnsfilter
  select PACKAGE_luci-app-ikoolproxy
  select PACKAGE_luci-app-iptvhelper
  select PACKAGE_luci-app-irqbalance
  select PACKAGE_luci-app-msd_lite
  select PACKAGE_luci-app-onliner
  select PACKAGE_luci-app-pppoe-relay
  select PACKAGE_luci-app-ramfree
  select PACKAGE_luci-app-smartdns
  select PACKAGE_luci-app-tencentddns
  select PACKAGE_luci-app-vlmcsd
  select PACKAGE_luci-app-wrtbwmon
  select PACKAGE_luci-app-unblockmusic
  select PACKAGE_luci-app-unblockmusic_INCLUDE_UnblockNeteaseMusic_Go
  depends on PACKAGE_$(PKG_NAME)
  default n

config CONFIG_PACKAGE_$(PKG_NAME)_Nas
  bool "Nas Packages Section"
  select PACKAGE_luci-app-uhttpd
  select PACKAGE_luci-app-vsftpd
  select PACKAGE_luci-app-poweroff
  select PACKAGE_luci-app-lucky
  select PACKAGE_luci-app-diskman
  depends on PACKAGE_$(PKG_NAME)
  default n

config CONFIG_PACKAGE_$(PKG_NAME)_Proxy
  bool "Proxy Packages Section"
  select PACKAGE_luci-app-autoipsetadder
  select PACKAGE_luci-app-mosdns
  select PACKAGE_luci-app-wireguard
  select PACKAGE_luci-app-openclash
  select PACKAGE_luci-app-privoxy
  select PACKAGE_luci-app-passwall
  select PACKAGE_luci-app-passwall_Iptables_Transparent_Proxy
  select PACKAGE_luci-app-passwall_INCLUDE_Brook
  select PACKAGE_luci-app-passwall_INCLUDE_Haproxy
  select PACKAGE_luci-app-passwall_INCLUDE_Hysteria
  select PACKAGE_luci-app-passwall_INCLUDE_NaiveProxy
  select PACKAGE_luci-app-passwall_INCLUDE_Shadowsocks_Libev_Client
  select PACKAGE_luci-app-passwall_INCLUDE_Shadowsocks_Libev_Server
  select PACKAGE_luci-app-passwall_INCLUDE_Shadowsocks_Rust_Client
  select PACKAGE_luci-app-passwall_INCLUDE_Shadowsocks_Rust_Server
  select PACKAGE_luci-app-passwall_INCLUDE_ShadowsocksR_Libev_Client
  select PACKAGE_luci-app-passwall_INCLUDE_ShadowsocksR_Libev_Server
  select PACKAGE_luci-app-passwall_INCLUDE_Simple_Obfs
  select PACKAGE_luci-app-passwall_INCLUDE_SingBox
  select PACKAGE_luci-app-passwall_INCLUDE_Trojan_GO
  select PACKAGE_luci-app-passwall_INCLUDE_Trojan_Plus
  select PACKAGE_luci-app-passwall_INCLUDE_tuic_client
  select PACKAGE_luci-app-passwall_INCLUDE_V2ray_Geodata
  select PACKAGE_luci-app-passwall_INCLUDE_V2ray_Plugin
  select PACKAGE_luci-app-passwall_INCLUDE_Xray
  select PACKAGE_luci-app-passwall2
  select PACKAGE_luci-app-passwall2_INCLUDE_Brook
  select PACKAGE_luci-app-passwall2_INCLUDE_Hysteria
  select PACKAGE_luci-app-passwall2_INCLUDE_IPv6_Nat
  select PACKAGE_luci-app-passwall2_INCLUDE_NaiveProxy
  select PACKAGE_luci-app-passwall_INCLUDE_Shadowsocks_Rust_Client
  select PACKAGE_luci-app-passwall_INCLUDE_Shadowsocks_Rust_Server
  select PACKAGE_luci-app-passwall2_INCLUDE_ShadowsocksR_Libev_Server
  select PACKAGE_luci-app-passwall2_INCLUDE_Shadowsocks_Libev_Server
  select PACKAGE_luci-app-passwall2_INCLUDE_Shadowsocks_Rust_Server
  select PACKAGE_luci-app-passwall2_INCLUDE_tuic_client
  select PACKAGE_luci-app-passwall2_Iptables_Transparent_Proxy
  select PACKAGE_luci-app-ssr-plus
  select PACKAGE_luci-app-ssr-plus_INCLUDE_Shadowsocks_Rust_Client
  select PACKAGE_luci-app-ssr-plus_INCLUDE_Shadowsocks_Rust_Server
  select PACKAGE_luci-app-ssr-plus_INCLUDE_Hysteria
  select PACKAGE_luci-app-ssr-plus_INCLUDE_IPT2Socks
  select PACKAGE_luci-app-ssr-plus_INCLUDE_Kcptun
  select PACKAGE_luci-app-ssr-plus_INCLUDE_NaiveProxy
  select PACKAGE_luci-app-ssr-plus_INCLUDE_Redsocks2
  select PACKAGE_luci-app-ssr-plus_INCLUDE_Shadowsocks_V2ray_Plugin
  select PACKAGE_luci-app-ssr-plus_INCLUDE_ShadowsocksR_Libev_Server
  select PACKAGE_luci-app-ssr-plus_INCLUDE_Trojan
  select PACKAGE_subconverter
  depends on PACKAGE_$(PKG_NAME)
  default n

config CONFIG_PACKAGE_$(PKG_NAME)_Arm
  bool "Arm Packages Section"
  select PACKAGE_lm-sensors
  select PACKAGE_lm-sensors-detect
  select PACKAGE_luci-app-cpufreq
  select PACKAGE_luci-app-poweroff
  depends on PACKAGE_$(PKG_NAME)
  default y if aarch64||arm

config CONFIG_PACKAGE_$(PKG_NAME)_Net
  bool "Net Test Packages Section"
  select PACKAGE_luci-app-bridge
  select PACKAGE_luci-app-cloudflarespeedtest
  select PACKAGE_luci-app-natter
  select PACKAGE_luci-app-netspeedtest
  depends on PACKAGE_$(PKG_NAME)
  default n

config CONFIG_PACKAGE_$(PKG_NAME)_SDWAN
  bool "SDWAN Packages Section"
  select PACKAGE_luci-app-ddnsto
  select PACKAGE_luci-app-frpc
  select PACKAGE_luci-app-frps
  select PACKAGE_luci-app-zerotier
  depends on PACKAGE_$(PKG_NAME)
  default n

config CONFIG_PACKAGE_$(PKG_NAME)_Docker
  bool "Docker Packages Section"
  select PACKAGE_luci-app-docker
  select PACKAGE_docker-compose
  depends on PACKAGE_$(PKG_NAME)
  default y if PACKAGE_$(PKG_NAME)_Nas

config CONFIG_PACKAGE_$(PKG_NAME)_Theme
  bool "More Themes"
  select PACKAGE_luci-theme-argon
  select PACKAGE_luci-app-argon-config
  select PACKAGE_luci-theme-design
  select PACKAGE_luci-app-design-config
  select PACKAGE_luci-theme-darkmatter
  depends on PACKAGE_$(PKG_NAME)
  default y if PACKAGE_$(PKG_NAME)_Nas || PACKAGE_$(PKG_NAME)_Docker

endmenu
endef

define Build/Prepare
endef

define Build/Configure
endef

define Build/Compile
endef

$(eval $(call BuildPackage,mysettings))
