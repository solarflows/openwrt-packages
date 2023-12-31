include $(TOPDIR)/rules.mk

PKG_NAME:=friendlyarm-pwmfan
PKG_VERSION:=1.0
PKG_RELEASE:=$(AUTORELEASE)

include $(INCLUDE_DIR)/package.mk

define Package/$(PKG_NAME)
	TITLE:=PwmFan Control For NanoPi R2S/R4S/R4SE And NanoPC T4.
	DEPENDS:=@TARGET_rockchip
	URL:=https://github.com/friendlyarm/friendlywrt/commit/6bd64bbc79b7a86224dea328dee07fa27f2cc06b
endef

define Package/$(PKG_NAME)/description
	a script which cherrycopy from friendlyarm to control pwmfan on friendlyarm RK33XX Boards.
endef

define Build/Compile
endef

define Package/$(PKG_NAME)/install
	$(INSTALL_DIR) $(1)/etc/init.d
	$(INSTALL_BIN) ./files/fa-fancontrol $(1)/etc/init.d/

	$(INSTALL_DIR) $(1)/etc/rc.d
	$(INSTALL_BIN) ./files/S21fa-fancontrol $(1)/etc/rc.d/

	$(INSTALL_DIR) $(1)/usr/bin
	$(INSTALL_BIN) ./files/cputemp.sh $(1)/usr/bin/
	$(INSTALL_BIN) ./files/fa-fancontrol-direct.sh $(1)/usr/bin/
	$(INSTALL_BIN) ./files/fa-fancontrol.sh $(1)/usr/bin/
endef

$(eval $(call BuildPackage,$(PKG_NAME)))
