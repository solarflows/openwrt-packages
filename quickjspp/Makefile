# SPDX-License-Identifier: GPL-3.0-only
#
# Copyright (C) 2021 ImmortalWrt.org

include $(TOPDIR)/rules.mk

PKG_NAME:=quickjspp
PKG_RELEASE:=1

PKG_SOURCE_PROTO:=git
PKG_SOURCE_URL:=https://github.com/ftk/quickjspp.git
PKG_SOURCE_DATE:=2022-03-27
PKG_SOURCE_VERSION:=aff4101acffab2f3c0b4aac07533df7135c88a2b
PKG_MIRROR_HASH:=87f84e97d87b2cbb65a629d43ad88469ac1f0bd0771652fcb238893c36e8ccd4

PKG_MAINTAINER:=Tianling Shen <cnsztl@immortalwrt.org>

PKG_BUILD_PARALLEL:=1
CMAKE_INSTALL:=1

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/cmake.mk

define Package/$(PKG_NAME)
  SECTION:=lib
  CATEGORY:=Libraries
  URL:=https://github.com/ftk/quickjspp
  TITLE:=QuickJS wrapper for C++
  DEPENDS:=+libatomic +libpthread
  PROVIDES:=quickjs
endef

define Package/$(PKG_NAME)/description
  QuickJSPP is QuickJS wrapper for C++. It allows you to easily embed
  Javascript engine into your program.
endef

define Build/Install
	$(INSTALL_DIR) $(PKG_INSTALL_DIR)/usr/lib/
	$(CP) $(PKG_BUILD_DIR)/quickjs/libquickjs.a $(PKG_INSTALL_DIR)/usr/lib/
	$(INSTALL_DIR) $(PKG_INSTALL_DIR)/usr/include/quickjs/
	$(CP) $(PKG_BUILD_DIR)/quickjspp.hpp $(PKG_INSTALL_DIR)/usr/include/
	$(CP) $(PKG_BUILD_DIR)/quickjs/quickjs*.h $(PKG_INSTALL_DIR)/usr/include/quickjs/
endef

$(eval $(call BuildPackage,$(PKG_NAME)))
