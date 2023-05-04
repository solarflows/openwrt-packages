#
# Copyright (C) 2013 Francisco Borges
# Copyright (C) 2011-2021 Entware
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#
# Makefile taken from http://github.com/FranciscoBorges/openwrt-printing-packages

include $(TOPDIR)/rules.mk

PKG_NAME:=openprinting-cups-filters
PKG_VERSION:=1.28.16
PKG_RELEASE:=2

PKG_SOURCE:=cups-filters-$(PKG_VERSION).tar.xz
PKG_SOURCE_URL:=https://github.com/OpenPrinting/cups-filters/releases/download/$(PKG_VERSION)
PKG_HASH:=3a400bfa751da2020775cd7d48d1647448551ff051f9345abc1df6357b199ac0
PKG_BUILD_DIR:=$(BUILD_DIR)/cups-filters-$(PKG_VERSION)
PKG_INSTALL:=1

include $(INCLUDE_DIR)/package.mk

EXTRA_CFLAGS+=-DHAVE_CPP_POPPLER_VERSION_H

define Package/openprinting-cups-filters
	SECTION:=utils
	CATEGORY:=Utilities
	SUBMENU:=Printing
	DEPENDS:=+cups +libcupsimage +fontconfig +libijs +libtiff +libjpeg +libpng +libpoppler +qpdf +glib2
	TITLE:=OpenPrinting CUPS filters
	URL:=http://www.openprinting.org
	MAINTAINER:=Entware team, https://entware.net
endef

define Package/openprinting-cups-filters/description
	CUPS filters maintained by OpenPrinting. The CUPS Filters package contains
	backends, filters and other software that was once part of the core CUPS
	distribution but is no longer maintained by Apple Inc.
endef

define Build/Configure
	$(call Build/Configure/Default, \
	--enable-imagefilters \
	--with-pdftops=gs \
	--with-gs-path=/usr/bin/gs \
	--with-pdftops-path=/usr/bin/gs \
	--disable-gnutls \
	--disable-openssl \
	--disable-cdsassl \
	--disable-ssl \
	--disable-gssapi \
	--disable-avahi \
	)
endef

TARGET_CXXFLAGS += -std=c++17
TARGET_LDFLAGS += -liconv -lqpdf -lpoppler-cpp

define Package/openprinting-cups-filters/conffiles
	/etc/cups/cups-browsed.conf
endef

define Package/openprinting-cups-filters/install
	$(INSTALL_DIR) $(1)/usr/bin $(1)/usr/lib/
	$(INSTALL_BIN) $(PKG_INSTALL_DIR)/usr/bin/* $(1)/usr/bin/
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/* $(1)/usr/lib/
	$(CP) -r $(PKG_INSTALL_DIR)/usr/lib/cups $(1)/usr/lib/
	$(INSTALL_DIR) $(1)/usr/share/cups $(1)/usr/share/ppd/cupsfilters
	$(CP) -r $(PKG_INSTALL_DIR)/usr/share/cups/* $(1)/usr/share/cups
	$(CP) -r $(PKG_INSTALL_DIR)/usr/share/ppd/cupsfilters/* $(1)/usr/share/ppd/cupsfilters
endef

define Build/InstallDev
	$(INSTALL_DIR) $(1)/usr/include $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/include/* $(1)/usr/include/
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/* $(1)/usr/lib
endef

$(eval $(call BuildPackage,openprinting-cups-filters))
