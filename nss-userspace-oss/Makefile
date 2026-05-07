include $(TOPDIR)/rules.mk

PKG_NAME:=nss-userspace-oss
PKG_RELEASE:=2

PKG_SOURCE_URL:=https://git.codelinaro.org/clo/qsdk/oss/nss-userspace.git
PKG_SOURCE_PROTO:=git
PKG_SOURCE_DATE:=2025-09-26
PKG_SOURCE_VERSION:=e1883f14
PKG_MIRROR_HASH:=f18699766c08117c784dbf58feaeb3fc682183e1c34e5e17c9859c47f5b11f5c
QSDK_VERSION:=13.1
PKG_VERSION:=$(QSDK_VERSION).$(subst -,.,$(PKG_SOURCE_DATE))~$(PKG_SOURCE_VERSION)

PKG_BUILD_PARALLEL:=1
PKG_FLAGS:=nonshared
PKG_BUILD_FLAGS:=gc-sections lto

PKG_CONFIG_DEPENDS:= \
	CONFIG_NSS_NLCAPWAP_ENABLE \
	CONFIG_NSS_NLDTLS_ENABLE \
	CONFIG_NSS_NLGRE_REDIR_ENABLE \
	CONFIG_NSS_NLIPSEC_ENABLE \
	CONFIG_NSS_NLQRFS_ENABLE \
	CONFIG_NSS_NLUDP_ST_ENABLE

include $(INCLUDE_DIR)/package.mk

define Package/nss-userspace
  TITLE:=Userspace utilities for NSS
endef

define Package/libnl-nss
$(call Package/nss-userspace)
  SECTION:=Libs
  CATEGORY:=Libraries
  TITLE += (libnl-nss)
  DEPENDS:=+libpthread +libnl-tiny +kmod-qca-nss-drv-netlink
endef

define Package/libnl-nss/description
 A framework in the userspace that establishes communication between userspace applications and the kernel.
endef

define Package/nssinfo
$(call Package/nss-userspace)
  SECTION:=Utils
  CATEGORY:=Utilities
  TITLE += (nssinfo)
	DEPENDS:=+libncurses +libnl-nss
endef

define Package/nssinfo/description
 A userspace utility for fetching stats from NSS.
endef

define Package/libnl-ppe
$(call Package/nss-userspace)
  SECTION:=Libs
  CATEGORY:=Libraries
  TITLE += (libnl-ppe)
  DEPENDS:=+libpthread +libnl-tiny +kmod-qca-nss-drv-netlink
endef

define Package/libnl-ppe/description
 A userspace library for configuring PPE netlink features.
endef

define Package/ppecfg
$(call Package/nss-userspace)
  SECTION:=Utils
  CATEGORY:=Utilities
  TITLE += (ppecfg)
  DEPENDS:=+libjson-c +libnl-ppe +libnl-tiny
endef

define Package/ppecfg/description
 A userspace utility for configuring PPE ACL, policer, and QoS features.
endef

define Package/netfn
$(call Package/nss-userspace)
  SECTION:=Utils
  CATEGORY:=Utilities
  TITLE += (netfn)
  DEPENDS:=+jansson +libnl-tiny
endef

define Package/netfn/description
 A userspace utility for configuring netfn-auto rules.
endef

TARGET_CFLAGS += $(FPIC) -D_GNU_SOURCE=1

TARGET_CPPFLAGS:= \
		-I$(STAGING_DIR)/usr/include/qca-nss-clients \
		-I$(STAGING_DIR)/usr/include/qca-nss-drv \
		-I$(STAGING_DIR)/usr/include/libnl-tiny \
		-I$(STAGING_DIR)/usr/include/libnl-nss

ifneq ($(CONFIG_PACKAGE_libnl-nss),)
MAKE_FLAGS+=BUILD_LIBNSS=y

ifdef CONFIG_NSS_NLUDP_ST_ENABLE
MAKE_FLAGS+=udp_st=y
endif

ifdef CONFIG_NSS_NLQRFS_ENABLE
MAKE_FLAGS+=qrfs=y
endif

ifdef CONFIG_NSS_NLGRE_REDIR_ENABLE
MAKE_FLAGS+=gre_redir=y
endif

ifdef CONFIG_NSS_NLIPSEC_ENABLE
MAKE_FLAGS+=ipsec=y
endif

ifdef CONFIG_NSS_NLDTLS_ENABLE
MAKE_FLAGS+=dtls=y
endif

ifdef CONFIG_NSS_NLCAPWAP_ENABLE
MAKE_FLAGS+=capwap=y
endif
endif

ifneq ($(CONFIG_PACKAGE_nssinfo),)
MAKE_FLAGS+=BUILD_NSSINFO=y
endif

ifneq ($(CONFIG_PACKAGE_libnl-ppe),)
MAKE_FLAGS+=BUILD_LIBPPE=y
endif

ifneq ($(CONFIG_PACKAGE_ppecfg),)
MAKE_FLAGS+=BUILD_LIBPPE=y BUILD_PPECFG=y
endif

ifneq ($(CONFIG_PACKAGE_netfn),)
MAKE_FLAGS+=BUILD_NETFN=y
endif

define Build/libnl-nss/InstallDev
	$(INSTALL_DIR) $(STAGING_DIR)/usr/include/libnl-nss
	$(CP) $(PKG_BUILD_DIR)/lib/include/* $(STAGING_DIR)/usr/include/libnl-nss
endef

define Build/libnl-ppe/InstallDev
	$(INSTALL_DIR) $(STAGING_DIR)/usr/include/libnl-ppe
	$(CP) $(PKG_BUILD_DIR)/ppe/ppenl_lib/include/* $(STAGING_DIR)/usr/include/libnl-ppe
endef

define Package/libnl-nss/install
	$(INSTALL_DIR) $(1)/usr/lib
	$(INSTALL_DATA) $(PKG_BUILD_DIR)/lib/obj/libnl-nss.so $(1)/usr/lib
endef

define Package/nssinfo/install
	$(INSTALL_DIR) $(1)/usr/sbin
	$(INSTALL_BIN) $(PKG_BUILD_DIR)/nssinfo/obj/nssinfo $(1)/usr/sbin/
endef

define Package/libnl-ppe/install
	$(INSTALL_DIR) $(1)/usr/lib
	$(INSTALL_DATA) $(PKG_BUILD_DIR)/ppe/ppenl_lib/obj/libnl-ppe.so $(1)/usr/lib
endef

define Package/ppecfg/install
	$(INSTALL_DIR) $(1)/usr/sbin
	$(INSTALL_BIN) $(PKG_BUILD_DIR)/ppe/ppecfg/obj/ppecfg $(1)/usr/sbin/
	$(INSTALL_DIR) $(1)/etc/ppecfg
	$(INSTALL_DATA) $(PKG_BUILD_DIR)/ppe/ppecfg/*.json $(1)/etc/ppecfg/
endef

define Package/netfn/install
	$(INSTALL_DIR) $(1)/usr/sbin
	$(INSTALL_BIN) $(PKG_BUILD_DIR)/netfn/obj/netfn $(1)/usr/sbin/
endef

$(eval $(call BuildPackage,netfn))
$(eval $(call BuildPackage,ppecfg))
$(eval $(call BuildPackage,libnl-ppe))
$(eval $(call BuildPackage,nssinfo))
$(eval $(call BuildPackage,libnl-nss))
