#
# Copyright (C) 2011-2021 Entware
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#
# Based on https://github.com/FranciscoBorges/openwrt-printing-packages

include $(TOPDIR)/rules.mk

PKG_NAME:=gutenprint
PKG_VERSION:=5.3.4
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.xz
PKG_SOURCE_URL:=@SF/gimp-print
PKG_HASH:=db44a701d2b8e6a8931c83cec06c91226be266d23e5c189d20a39dd175f2023b

PKG_BUILD_DEPENDS:=gutenprint/host cups ghostscript libiconv-full
HOST_BUILD_DEPENDS:=libiconv-full/host
PKG_FIXUP:=autoreconf
PKG_INSTALL:=1

include $(INCLUDE_DIR)/host-build.mk
include $(INCLUDE_DIR)/package.mk

define Package/gutenprint
	SECTION:=net
	CATEGORY:=Network
	SUBMENU:=Printing
	DEPENDS:=+cups +libreadline +libncursesw
	TITLE:=Gutenprint CUPS drivers
	URL:=http://gimp-print.sourceforge.net/
	MAINTAINER:=Entware team, https://entware.net
endef

define Package/gutenprint/description
 High quality drivers for Canon, Epson, Lexmark, Sony, Olympus, and PCL
 printers for use with CUPS and GIMP.
endef

define Host/Patch
endef

HOST_CONFIGURE_ARGS += \
	--disable-shared \
	--disable-nls \
	--disable-nls-macosx \
	--disable-samples \
	--disable-escputil \
	--disable-test \
	--without-cups \
	--without-modules \
	--without-readline \
	--without-gimp2 \
	--without-doc

define Host/Compile
	$(MAKE) $(HOST_JOBS) -C $(HOST_BUILD_DIR)/src/xml/printers $(HOST_MAKE_FLAGS) check_duplicate_printers.test
	$(MAKE) $(HOST_JOBS) -C $(HOST_BUILD_DIR)/src/xml $(HOST_MAKE_FLAGS) extract-strings
endef

define Host/Install
endef

CONFIGURE_ARGS += \
	--disable-test

define Build/Configure
	$(call Build/Configure/Default)
	ln -s $(HOST_BUILD_DIR)/src/xml/printers/check_duplicate_printers.test \
		$(PKG_BUILD_DIR)/src/xml/printers/check_duplicate_printers.test
	ln -s $(HOST_BUILD_DIR)/src/xml/extract-strings \
		$(PKG_BUILD_DIR)/src/xml/extract-strings
endef

define Package/gutenprint/install
	$(INSTALL_DIR) $(1)/usr/bin
	$(CP) $(PKG_INSTALL_DIR)/usr/bin $(1)/usr
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/cups $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/libgutenprint.so* $(1)/usr/lib
	$(INSTALL_DIR) $(1)/usr/sbin
	$(INSTALL_BIN) $(PKG_INSTALL_DIR)/usr/sbin/cups-genppd.5.3 $(1)/usr/sbin
	$(INSTALL_DIR) $(1)/usr/share/gutenprint
	$(CP) $(PKG_INSTALL_DIR)/usr/share/cups $(1)/usr/share
	$(CP) $(PKG_INSTALL_DIR)/usr/share/gutenprint/5.3 $(1)/usr/share/gutenprint
endef

$(eval $(call HostBuild))
$(eval $(call BuildPackage,gutenprint))