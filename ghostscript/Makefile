#
# Copyright (C) 2013 OpenWrt.org
# Copyright (C) 2011-2021 Entware
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#
# Based on https://github.com/FranciscoBorges/openwrt-printing-packages
# This is the last release with old PDF implementation
#

include $(TOPDIR)/rules.mk

PKG_NAME:=ghostscript
PKG_VERSION:=10.01.1
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://github.com/ArtifexSoftware/ghostpdl-downloads/releases/download/gs$(subst .,,$(PKG_VERSION))
PKG_HASH:=4df18a808cd4369f25e02dbcec2f133cb6d674627b2c6b1502020e58d43e32ce

PKG_BUILD_DEPENDS:=ghostscript/host
PKG_FIXUP:=autoreconf
PKG_INSTALL:=1

include $(INCLUDE_DIR)/host-build.mk
include $(INCLUDE_DIR)/package.mk

define Package/ghostscript
	SECTION:=utils
	CATEGORY:=Utilities
	SUBMENU:=Printing
	DEPENDS:=+fontconfig +libidn +libtiff +libcups2
	TITLE:=interpreter for the PostScript language and for PDF
	URL:=https://www.ghostscript.com/
	MAINTAINER:=Entware team, https://entware.net
endef

define Package/ghostscript/description
 An interpreter for the PostScript language and for PDF.
endef

GS_AUX_BINARIES:=echogs genarch genconf packps

define Host/Configure
	(cd $(HOST_BUILD_DIR); \
		./autogen.sh \
	);
	$(call Host/Configure/Default)
endef

define Host/Compile
	$(foreach binary,$(GS_AUX_BINARIES),
		$(call Host/Compile/Default,obj/aux/$(binary))
	)
endef

define Host/Install
endef

CONFIGURE_ARGS += \
	--disable-compile-inits \
	--with-system-libtiff \
	--with-fontpath=/usr/share/fonts/ghostscript/fonts/:/usr/share/fonts/default/ghostscript/:/usr/share/fonts/default/TrueType/:/usr/share/fonts/default/Type1:/usr/share/cups/fonts/:/usr/share/fonts/ \

define Build/Configure
	(cd $(PKG_BUILD_DIR) && $(RM) -r jpeg leptonica libpng tesseract tiff zlib)
	$(call Build/Configure/Default)
	mkdir -p $(PKG_BUILD_DIR)/obj/aux
	for binary in $(GS_AUX_BINARIES); do \
		$(CP) $(HOST_BUILD_DIR)/obj/aux/$$$${binary} \
			$(PKG_BUILD_DIR)/obj/aux/$$$${binary}; \
		touch $(PKG_BUILD_DIR)/obj/aux/$$$${binary}; \
	done
endef

define Build/Install
	$(call Build/Install/Default)
	$(call Build/Install/Default,install-examples)
endef

define Package/ghostscript/install
	$(INSTALL_DIR) $(1)/usr
	$(CP) $(PKG_INSTALL_DIR)/usr/bin $(1)/usr
	$(INSTALL_DIR) $(1)/usr/share
	$(CP) $(PKG_INSTALL_DIR)/usr/share/ghostscript $(1)/usr/share
endef

$(eval $(call HostBuild))
$(eval $(call BuildPackage,ghostscript))
