include $(TOPDIR)/rules.mk

PKG_NAME:=luci-app-qBittorrent-Enhanced-Edition
PKG_VERSION:=1.0
PKG_RELEASE:=2
LUCI_TITLE:=LuCI support for qBittorrent-Enhanced-Edition
LUCI_PKGARCH:=all
LUCI_DEPENDS:=\
	+PACKAGE_luci-app-qbittorrent_static:qBittorrent-Enhanced-Edition-static \
	+PACKAGE_luci-app-qbittorrent_dynamic:qBittorrent-Enhanced-Edition

define Package/$(PKG_NAME)/config
	choice
		prompt "Build Version Selection"
		default PACKAGE_luci-app-qbittorrent_static if aarch64||x86_64
		default PACKAGE_luci-app-qbittorrent_dynamic if !(aarch64||x86_64)

		config PACKAGE_luci-app-qbittorrent_static
			bool "Static Build"
			depends on aarch64||x86_64

		config PACKAGE_luci-app-qbittorrent_dynamic
			bool "Dynamic Build"

	endchoice
endef

include $(TOPDIR)/feeds/luci/luci.mk

# call BuildPackage - OpenWrt buildroot signature