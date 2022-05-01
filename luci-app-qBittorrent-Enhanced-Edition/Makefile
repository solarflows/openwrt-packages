include $(TOPDIR)/rules.mk

PKG_NAME:=luci-app-qBittorrent-Enhanced-Edition
PKG_VERSION:=1.0
PKG_RELEASE:=2
LUCI_TITLE:=LuCI support for qBittorrent-Enhanced-Edition
LUCI_PKGARCH:=all
LUCI_DEPENDS:= \
	+PACKAGE_static:qBittorrent-Enhanced-Edition-static \
	+PACKAGE_dynamic:qBittorrent-Enhanced-Edition \

define Package/luci-app-qBittorrent-Enhanced-Edition/config
	choice
		prompt "Build Version Selection"
		default PACKAGE_dynamic

		config PACKAGE_static
			bool "Static"
			depends on aarch64||x86_64

		config PACKAGE_dynamic
			bool "Dynamic"

	endchoice
endef

define Package/luci-app-qBittorrent-Enhanced-Edition/conffiles
/etc/qBittorrent
/etc/config/qBittorrentEE
endef

include $(TOPDIR)/feeds/luci/luci.mk

# call BuildPackage - OpenWrt buildroot signature