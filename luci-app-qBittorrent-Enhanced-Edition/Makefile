include $(TOPDIR)/rules.mk

PKG_NAME:=luci-app-qBittorrent-Enhanced-Edition
PKG_VERSION:=1.0
PKG_RELEASE:=2
LUCI_TITLE:=LuCI support for qBittorrent-Enhanced-Edition
LUCI_PKGARCH:=all
LUCI_DEPENDS:=+python3 +qBittorrent-Enhanced-Edition

define Package/$(PKG_NAME)/conffiles
	/etc/config/qBittorrentEE
endef

include $(TOPDIR)/feeds/luci/luci.mk

# call BuildPackage - OpenWrt buildroot signature