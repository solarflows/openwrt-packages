include $(TOPDIR)/rules.mk

PKG_NAME:=xray-geodata
PKG_VERSION:=202201272209
PKG_RELEASE:=$(AUTORELEASE)

PKG_LICENSE_FILES:=LICENSE

include $(INCLUDE_DIR)/package.mk

GEOIP_ENHACHED_FILE:=geoip.dat.$(PKG_VERSION)
define Download/geoip-enhached
  URL:=https://github.com/Loyalsoldier/v2ray-rules-dat/releases/download/$(PKG_VERSION)/
  URL_FILE:=geoip.dat
  FILE:=$(GEOIP_ENHACHED_FILE)
  HASH:=151b99429ee06300583d8067539cfc05d50fe1e4a27a7fe4698d41e62377085e
endef

GEOSITE_ENHACHED_FILE:=geosite.dat.$(PKG_VERSION)
define Download/geosite-enhached
  URL:=https://github.com/Loyalsoldier/v2ray-rules-dat/releases/download/$(PKG_VERSION)/
  URL_FILE:=geosite.dat
  FILE:=$(GEOSITE_ENHACHED_FILE)
  HASH:=c77f1d3d0c6fa77b943af9df282c7e1949ce18376fbb9738faecea70fd752a09
endef

define Package/xray-geodata/template
  SECTION:=net
  CATEGORY:=Network
  SUBMENU:=IP Addresses and Names
  URL:=https://github.com/Loyalsoldier/v2ray-rules-dat
  PKGARCH:=all
endef

define Package/xray-geoip
  $(call Package/xray-geodata/template)
  TITLE:=GeoIP List for V2Ray/Xray
  VERSION:=$(PKG_VERSION)-$(PKG_RELEASE)
  LICENSE:=GPL-3.0
endef

define Package/xray-geosite
  $(call Package/xray-geodata/template)
  TITLE:=Geosite List for V2Ray/Xray
  VERSION:=$(PKG_VERSION)-$(PKG_RELEASE)
  LICENSE:=GPL-3.0
endef

define Build/Prepare
	$(call Build/Prepare/Default)
ifneq ($(CONFIG_PACKAGE_xray-geoip),)
	$(call Download,geoip-enhached)
endif
ifneq ($(CONFIG_PACKAGE_xray-geosite),)
	$(call Download,geosite-enhached)
endif
endef

define Build/Compile
endef

define Package/xray-geoip/install
	$(INSTALL_DIR) $(1)/usr/share/xray
	$(INSTALL_DATA) $(DL_DIR)/$(GEOIP_ENHACHED_FILE) $(1)/usr/share/xray/geoip.dat
endef

define Package/xray-geosite/install
	$(INSTALL_DIR) $(1)/usr/share/xray
	$(INSTALL_DATA) $(DL_DIR)/$(GEOSITE_ENHACHED_FILE) $(1)/usr/share/xray/geosite.dat
endef

$(eval $(call BuildPackage,xray-geoip))
$(eval $(call BuildPackage,xray-geosite))