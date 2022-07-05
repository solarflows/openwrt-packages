include $(TOPDIR)/rules.mk

PKG_NAME:=python-pycryptodome
PKG_VERSION:=3.15.0
PKG_RELEASE:=1

PYPI_NAME:=pycryptodome
PKG_HASH:=9135dddad504592bcc18b0d2d95ce86c3a5ea87ec6447ef25cfedea12d6018b8

HOST_PYTHON3_PACKAGE_BUILD_DEPENDS:=setuptools-scm

include $(TOPDIR)/feeds/packages/lang/python/pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk

define Package/python3-pycryptodome
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=pycryptodome
  URL:=https://pypi.org/project/pycryptodome/
  DEPENDS:=+python3-light
endef

define Package/python3-pycryptodome/description
  PyCryptodome is a self-contained Python package of low-level cryptographic primitives.
endef

$(eval $(call Py3Package,python3-pycryptodome))
$(eval $(call BuildPackage,python3-pycryptodome))
$(eval $(call BuildPackage,python3-pycryptodome-src))
