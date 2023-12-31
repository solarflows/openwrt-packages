include $(TOPDIR)/rules.mk

PKG_NAME:=qBittorrent-Enhanced-Edition
PKG_VERSION:=4.6.0.10
PKG_RELEASE=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://codeload.github.com/c0re100/qBittorrent-Enhanced-Edition/tar.gz/release-$(PKG_VERSION)?
PKG_HASH:=22ef335a4fa2f8d90c97cbf48efbf6d77fb86853c2faee7271400a5466427112
PKG_BUILD_DIR:=$(BUILD_DIR)/$(PKG_NAME)-release-$(PKG_VERSION)

PKG_LICENSE:=GPL-2.0-or-later
PKG_LICENSE_FILES:=COPYING

PKG_BUILD_PARALLEL:=1
PKG_INSTALL:=1

PKG_BUILD_DEPENDS:=qt5tools
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/cmake.mk

define Package/qBittorrent-Enhanced-Edition
  SUBMENU:=BitTorrent
  SECTION:=net
  CATEGORY:=Network
  TITLE:=bittorrent client programmed in C++ / Qt
  URL:=https://github.com/c0re100/qBittorrent-Enhanced-Edition
  DEPENDS:=+libgcc +libstdcpp \
		+rblibtorrent \
		+libopenssl \
		+libQt5Core \
		+libQt5Network \
		+libQt5Sql \
		+libQt5Xml \
		+qt5-plugin-libqsqlite \
		+zlib
endef

define Package/qBittorrent-Enhanced-Edition/description
  qBittorrent is a bittorrent client programmed in C++ / Qt that uses
  libtorrent (sometimes called libtorrent-rasterbar) by Arvid Norberg.
  It aims to be a good alternative to all other bittorrent clients out
  there. qBittorrent is fast, stable and provides unicode support as
  well as many features.
endef

CMAKE_OPTIONS += \
	-DGUI=OFF \
	-DCMAKE_BUILD_TYPE=Release \
	-DQT6=OFF \
	-DSTACKTRACE=OFF \
	-DWEBUI=ON \
	-DVERBOSE_CONFIGURE=ON

TARGET_CFLAGS += -std=c++17 -ffunction-sections -fdata-sections -flto
TARGET_LDFLAGS += -Wl,--gc-sections,--as-needed -flto

define Package/qBittorrent-Enhanced-Edition/install
	$(INSTALL_DIR) $(1)/usr/bin
	$(INSTALL_BIN) $(PKG_INSTALL_DIR)/usr/bin/qbittorrent-nox $(1)/usr/bin
endef

$(eval $(call BuildPackage,qBittorrent-Enhanced-Edition))
