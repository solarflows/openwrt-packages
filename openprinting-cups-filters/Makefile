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
PKG_VERSION:=1.28.17
PKG_RELEASE:=1

PKG_SOURCE:=cups-filters-$(PKG_VERSION).tar.xz
PKG_SOURCE_URL:=https://github.com/OpenPrinting/cups-filters/releases/download/$(PKG_VERSION)
PKG_HASH:=270a3752a960368aa99d431fb5d34f4039b2ac943c576d840612d1d8185c9bb9
PKG_BUILD_DIR:=$(BUILD_DIR)/cups-filters-$(PKG_VERSION)

PKG_FIXUP:=autoreconf
PKG_INSTALL:=1
PKG_BUILD_DEPENDS:=glib2/host

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/nls.mk

define Package/openprinting-cups-filters
	SECTION:=utils
	CATEGORY:=Utilities
	SUBMENU:=Printing
	DEPENDS:=+cups +dejavu-fonts-ttf-DejaVuSans +dejavu-fonts-ttf-DejaVuSansMono +glib2 +qpdf \
		+libavahi +libavahi-client +libdbus +libexif +libpoppler
	TITLE:=OpenPrinting CUPS filters
	URL:=http://www.openprinting.org
	MAINTAINER:=Entware team, https://entware.net
endef

define Package/openprinting-cups-filters/description
	CUPS filters maintained by OpenPrinting. The CUPS Filters package contains
	backends, filters and other software that was once part of the core CUPS
	distribution but is no longer maintained by Apple Inc.
endef

CONFIGURE_ARGS += \
	--disable-ldap \
	--disable-braille \
	--with-pdftops=gs \
	--with-gs-path=/usr/bin/gs \
	--with-pdftops-path=/usr/bin/gs \
	--with-test-font-path=/usr/share/fonts/ttf-dejavu/DejaVuSans.ttf \
	--with-shell=/bin/sh

CONFIGURE_VARS += \
	LIBQPDF_CFLAGS=-I$(STAGING_DIR)/usr/include \
	LIBQPDF_LIBS=-L$(STAGING_DIR)/usr/lib \
	POPPLER_CFLAGS=-I$(STAGING_DIR)/usr/include/poppler \
	POPPLER_LIBS=-L$(STAGING_DIR)/usr/lib

TARGET_CXXFLAGS += -std=c++17

define Package/openprinting-cups-filters/conffiles
	/etc/cups/cups-browsed.conf
endef

define Package/openprinting-cups-filters/install
	$(INSTALL_DIR) $(1)/usr/bin
	$(CP) $(PKG_INSTALL_DIR)/usr/bin $(1)/usr/bin
	$(INSTALL_DIR) $(1)/etc/cups
	$(INSTALL_CONF) \
	    $(PKG_INSTALL_DIR)/etc/cups/cups-browsed.conf \
	    $(1)/etc/cups
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/lib*.so* $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/cups $(1)/usr/lib
	$(INSTALL_DIR) $(1)/usr/sbin
	$(INSTALL_BIN) $(PKG_INSTALL_DIR)/usr/sbin/cups-browsed $(1)/usr/sbin
	$(INSTALL_DIR) $(1)/usr/share/cups
	$(CP) $(PKG_INSTALL_DIR)/usr/share/ppd $(1)/usr/share
	$(CP) $(PKG_INSTALL_DIR)/usr/share/cups/{charsets,data,drv,mime,ppdc} \
	    $(1)/usr/share/cups
endef

$(eval $(call BuildPackage,openprinting-cups-filters))
