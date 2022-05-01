include $(TOPDIR)/rules.mk

PKG_NAME:=luci-app-qBittorrent
PKG_VERSION:=1.0
PKG_RELEASE:=2
LUCI_TITLE:=LuCI support for qBittorrent-Enhanced-Edition
LUCI_PKGARCH:=all
LUCI_DEPENDS:= \
	+PACKAGE_luci-app-qBittorrent_static:qBittorrent-Enhanced-Edition-static \
	+PACKAGE_luci-app-qBittorrent_dynamic:qBittorrent-Enhanced-Edition \

define Package/$(PKG_NAME)/config
	choice
		prompt "Build Version Selection"
		default PACKAGE_luci-app-qBittorrent_dynamic

		config PACKAGE_luci-app-qBittorrent_static
			bool "Static"
			depends on aarch64||x86_64

		config PACKAGE_luci-app-qBittorrent_dynamic
			bool "Dynamic"

	endchoice
endef

define Package/$(PKG_NAME)/conffiles
/etc/qBittorrent
/etc/config/qBittorrentEE
endef

include $(TOPDIR)/feeds/luci/luci.mk

# call BuildPackage - OpenWrt buildroot signature