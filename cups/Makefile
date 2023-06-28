#
# Copyright (C) 2006-2016 OpenWrt.org
# Copyright (C) 2016 lede-project.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#
#
# Based on https://github.com/FranciscoBorges/openwrt-printing-packages

include $(TOPDIR)/rules.mk

PKG_NAME:=cups
PKG_VERSION:=2.4.6
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION)-source.tar.gz
PKG_SOURCE_URL:=https://github.com/OpenPrinting/cups/releases/download/v$(PKG_VERSION)
PKG_HASH:=58e970cf1955e1cc87d0847c32526d9c2ccee335e5f0e3882b283138ba0e7262

# PKG_SOURCE_PROTO:=git
# PKG_SOURCE_URL:=https://github.com/OpenPrinting/cups.git
# PKG_SOURCE_DATE:=2023-05-06
# PKG_SOURCE_VERSION:=90e8a54d622b3ec502fd9bd2c48e5ac78e7963a0
# PKG_MIRROR_HASH:=5428db947c94f89efbf799e3e19b10dcc9e6bb91170b6b8e74ef522eba1ebfcd

PKG_BUILD_PARALLEL:=1
PKG_INSTALL:=1

include $(INCLUDE_DIR)/package.mk

STRIP:=true

define Package/cups/Default
	URL:=http://www.cups.org/
	SUBMENU:=Printing
	DEPENDS:=+libcups2
endef

define Package/cups
	$(call Package/cups/Default)
	SECTION:=utils
	CATEGORY:=Utilities
	DEPENDS+=+libusb-1.0 +libavahi-dbus-support +libavahi-client +libdbus +avahi-autoipd +avahi-daemon-service-http +avahi-dnsconfd +libstdcpp +libacl
	TITLE:=Common UNIX Printing System (daemon)
endef

define Package/cups/description
	Common UNIX Printing System (daemon)
endef

define Package/cups/conffiles
	/etc/cups/classes.conf
	/etc/cups/cupsd.conf
	/etc/cups/printers.conf
endef

define Package/cups-bsd
	$(call Package/cups/Default)
	SECTION:=utils
	CATEGORY:=Utilities
	TITLE:=Common UNIX Printing System - BSD commands (old)
endef

define Package/cups-client
	$(call Package/cups/Default)
	SECTION:=utils
	CATEGORY:=Utilities
	DEPENDS+=+libcupsimage2
	TITLE:=Common UNIX Printing System - Client commands
endef

define Package/cups-client/conffiles
	/etc/cups/client.conf
endef

define Package/cups-ipp-utils
	$(call Package/cups/Default)
	SECTION:=utils
	CATEGORY:=Utilities
	DEPENDS+=+libcups2
	TITLE:=Common UNIX Printing System - IPP developer/admin utilities
endef

define Package/cups-ppdc
  	$(call Package/cups/Default)
	SECTION:=utils
	CATEGORY:=Utilities
	DEPENDS+=+zlib +libcups2 +libjpeg +libpng +libstdcpp
	TITLE:=Common UNIX Printing System - PPDC utils
endef

define Package/libcups2
	$(call Package/cups/Default)
	SECTION:=libs
	CATEGORY:=Libraries
	DEPENDS:=+zlib +libpthread +libpng +libjpeg +libavahi-client +libavahi +libgnutls +libtiff
	TITLE:=Common UNIX Printing System - Core library
endef

define Package/libcupsimage2
	$(call Package/cups/Default)
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=Common UNIX Printing System - Image library
endef

CONFIGURE_ARGS+= \
	--with-cups-user="nobody" \
	--with-cups-group="nogroup" \
	--with-error-policy=retry-job \
	--with-local_protocols='dnssd' \
	--with-system-groups="root" \
	--enable-debug \
	--enable-default-shared \
	--enable-gssapi \
	--enable-avahi \
	--enable-dbus \
	--enable-libusb \
	--enable-dbus \
	--enable-shared \
	--enable-sync-on-close \
	--disable-launchd \
	--disable-gssapi \
	--disable-pam \
	--with-dnssd=avahi \
	--enable-ssl \
	--with-tls=gnutls \
	UNAME="Linux" \
	LIBS="$(TARGET_LDFLAGS) -lz -lpng -ljpeg"

define Package/cups/install
	# cups + cups-daemon + cups-core-drivers + cups-server-common
	$(INSTALL_DIR) $(1)/etc/cups
	$(CP) $(PKG_INSTALL_DIR)/etc/cups/* $(1)/etc/cups/
	$(LN) /tmp $(1)/etc/cups/certs
	# overwrite default config with our own
	$(CP) ./files/etc/cups/* $(1)/etc/cups/

	$(INSTALL_DIR) $(1)/usr/lib/cups
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/cups/backend $(1)/usr/lib/cups
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/cups/cgi-bin $(1)/usr/lib/cups
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/cups/daemon $(1)/usr/lib/cups
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/cups/driver $(1)/usr/lib/cups
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/cups/monitor $(1)/usr/lib/cups
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/cups/notifier $(1)/usr/lib/cups

	$(INSTALL_DIR) $(1)/usr/lib/cups/filter
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/cups/filter/{commandtops,pstops} \
		$(PKG_INSTALL_DIR)/usr/lib/cups/filter/gziptoany \
		$(PKG_INSTALL_DIR)/usr/lib/cups/filter/rasterto* \
		$(1)/usr/lib/cups/filter

	$(INSTALL_DIR) $(1)/usr/share/cups
	$(CP) $(PKG_INSTALL_DIR)/usr/share/cups/data $(1)/usr/share/cups
	$(CP) $(PKG_INSTALL_DIR)/usr/share/cups/mime $(1)/usr/share/cups
	$(CP) $(PKG_INSTALL_DIR)/usr/share/cups/model $(1)/usr/share/cups
	$(CP) $(PKG_INSTALL_DIR)/usr/share/cups/templates $(1)/usr/share/cups
	$(CP) $(PKG_INSTALL_DIR)/usr/share/cups/usb $(1)/usr/share/cups

	### Do install docs: cups web interface relies on them
	$(INSTALL_DIR) $(1)/usr/share/doc/cups
	$(CP) $(PKG_INSTALL_DIR)/usr/share/doc/cups/*.*html \
		$(1)/usr/share/doc/cups/
	$(CP) $(PKG_INSTALL_DIR)/usr/share/doc/cups/*.css \
		$(1)/usr/share/doc/cups/
	$(CP) $(PKG_INSTALL_DIR)/usr/share/doc/cups/*.txt \
		$(1)/usr/share/doc/cups/
	$(CP) $(PKG_INSTALL_DIR)/usr/share/doc/cups/images \
		$(1)/usr/share/doc/cups/

	$(INSTALL_DIR) $(1)/usr/sbin
	$(CP) $(PKG_INSTALL_DIR)/usr/sbin/cupsfilter $(1)/usr/sbin
	$(INSTALL_BIN) $(PKG_INSTALL_DIR)/usr/sbin/cupsd $(1)/usr/sbin/

	# install initscript with priority 60
	$(INSTALL_DIR) $(1)/etc/init.d
	$(INSTALL_BIN) ./files/cupsd.init $(1)/etc/init.d/cupsd

	# needed for cups to find usb printers per http://wiki.openwrt.org/doc/howto/cups.server
	chmod 700 $(1)/usr/lib/cups/backend/usb
endef

define Package/cups-bsd/install
	$(INSTALL_DIR) $(1)/usr/bin
	$(INSTALL_BIN) $(PKG_INSTALL_DIR)/usr/bin/{lprm,lpq,lpr} $(1)/usr/bin/

	$(INSTALL_DIR) $(1)/usr/sbin
	$(INSTALL_BIN) $(PKG_INSTALL_DIR)/usr/sbin/lpc $(1)/usr/sbin/
endef

define Package/cups-client/install
	$(INSTALL_DIR) $(1)/usr/bin
	$(INSTALL_BIN) \
		$(PKG_INSTALL_DIR)/usr/bin/{cancel,cupstestppd} \
		$(PKG_INSTALL_DIR)/usr/bin/{lp,lpoptions,lpstat} \
		$(1)/usr/bin/

	$(INSTALL_DIR) $(1)/usr/sbin
	$(INSTALL_BIN) \
		$(PKG_INSTALL_DIR)/usr/sbin/{cupsaccept,cupsctl,cupsdisable,cupsenable,cupsreject} \
		$(PKG_INSTALL_DIR)/usr/sbin/{lpadmin,lpinfo,lpmove} \
		$(1)/usr/sbin/
endef

define Package/cups-ipp-utils/install
	$(INSTALL_DIR) $(1)/usr/sbin
	$(INSTALL_BIN) \
		$(PKG_BUILD_DIR)/tools/{ippeveprinter,ippeveps,ippevepcl} \
		$(1)/usr/sbin/
	$(INSTALL_DIR) $(1)/usr/bin
	$(INSTALL_BIN) \
		$(PKG_INSTALL_DIR)/usr/bin/{ippfind,ipptool} \
		$(1)/usr/bin/
endef

define Package/cups-ppdc/install
	$(INSTALL_DIR) $(1)/usr/bin
	$(INSTALL_BIN) \
		$(PKG_INSTALL_DIR)/usr/bin/ppd* \
		$(1)/usr/bin/

	$(INSTALL_DIR) $(1)/usr/share/cups/examples
	$(CP) $(PKG_INSTALL_DIR)/usr/share/cups/examples/* $(1)/usr/share/cups/examples

	$(INSTALL_DIR) $(1)/usr/share/cups/ppdc
	$(CP) $(PKG_INSTALL_DIR)/usr/share/cups/ppdc/*.h $(1)/usr/share/cups/ppdc
endef

define Package/libcups2/install
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/libcups.so* $(1)/usr/lib/
endef

define Package/libcupsimage2/install
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/libcupsimage.so* $(1)/usr/lib/
endef

define Build/InstallDev
	$(INSTALL_DIR) $(2)/bin
	$(INSTALL_BIN) $(PKG_INSTALL_DIR)/usr/bin/cups-config $(2)/bin/

	$(INSTALL_DIR) $(1)/usr/include
	$(CP) $(PKG_INSTALL_DIR)/usr/include/cups $(1)/usr/include/

	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/libcups*.so* $(1)/usr/lib/
endef

$(eval $(call BuildPackage,cups))
$(eval $(call BuildPackage,libcups2))
$(eval $(call BuildPackage,libcupsimage2))
$(eval $(call BuildPackage,cups-bsd))
$(eval $(call BuildPackage,cups-client))
$(eval $(call BuildPackage,cups-ipp-utils))
$(eval $(call BuildPackage,cups-ppdc))
