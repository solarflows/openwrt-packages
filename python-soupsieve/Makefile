include $(TOPDIR)/rules.mk

PKG_NAME:=python-soupsieve
PKG_VERSION:=2.3.2.post1
PKG_RELEASE:=1

PYPI_NAME:=soupsieve
PKG_HASH:=fc53893b3da2c33de295667a0e19f078c14bf86544af307354de5fcf12a3f30d

HOST_PYTHON3_PACKAGE_BUILD_DEPENDS:=setuptools-scm

include $(TOPDIR)/feeds/packages/lang/python/pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk

define Package/python3-soupsieve
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=soupsieve
  URL:=https://pypi.org/project/requests-toolbelt
  DEPENDS:=+python3-light
endef

define Package/python3-soupsieve/description
  A modern CSS selector implementation for Beautiful Soup.
endef

$(eval $(call Py3Package,python3-soupsieve))
$(eval $(call BuildPackage,python3-soupsieve))
$(eval $(call BuildPackage,python3-soupsieve-src))
