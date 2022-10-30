include $(TOPDIR)/rules.mk

PKG_NAME:=nas-settings
PKG_VERSION:=1
PKG_RELEASE:=1

include $(INCLUDE_DIR)/package.mk

define Package/nas-settings
  SECTION:=Configs
  CATEGORY:=Configs
  TITLE:=Config For Nas Divices.
  PKGARCH:=all
  DEPENDS:=+luci-app-amule \
			+luci-app-aria2 \
			+luci-app-beardropper \
			+luci-app-cpufreq \
			+luci-app-ddnsto \
			+luci-app-diskman \
			+@luci-app-diskman_INCLUDE_btrfs_progs \
			+@luci-app-diskman_INCLUDE_lsblk \
			+@luci-app-diskman_INCLUDE_mdadm \
			+luci-app-dockerman \
			+luci-app-filebrowser \
			+luci-app-frpc \
			+luci-app-linkease \
			+luci-app-minidlna \
			+luci-app-mosdns \
			+luci-app-music-remote-center \
			+luci-app-netspeedtest \
			+luci-app-nfs \
			+luci-app-openclash \
			+luci-app-passwall \
			+@luci-app-passwall_INCLUDE_Brook \
			+@luci-app-passwall_INCLUDE_ChinaDNS_NG \
			+@luci-app-passwall_INCLUDE_Hysteria \
			+@luci-app-passwall_INCLUDE_NaiveProxy \
			+@luci-app-passwall_INCLUDE_ShadowsocksR_Libev_Server \
			+@luci-app-passwall_INCLUDE_Shadowsocks_Rust_Server \
			+@luci-app-passwall_INCLUDE_Trojan_GO \
			+luci-app-pgyvpn \
			+luci-app-phtunnel \
			+luci-app-poweroff \
			+luci-app-pushbot \
			+luci-app-qBittorrent-Enhanced-Edition \
			+luci-app-ramfree \
			+luci-app-samba \
			+luci-app-smartdns \
			+luci-app-ssr-plus \
			+@luci-app-ssr-plus_INCLUDE_Hysteria \
			+@luci-app-ssr-plus_INCLUDE_IPT2Socks \
			+@luci-app-ssr-plus_INCLUDE_Kcptun \
			+@luci-app-ssr-plus_INCLUDE_NaiveProxy \
			+@luci-app-ssr-plus_INCLUDE_Redsocks2 \
			+@luci-app-ssr-plus_INCLUDE_ShadowsocksR_Libev_Server \
			+@luci-app-ssr-plus_INCLUDE_Shadowsocks_V2ray_Plugin \
			+@luci-app-ssr-plus_INCLUDE_Trojan \
			+luci-app-syncthing \
			+luci-app-transmission \
			+luci-app-ttyd \
			+luci-app-turboacc \
			+@luci-app-turboacc_INCLUDE_DNSFORWARDER \
			+@luci-app-turboacc_INCLUDE_DNSPROXY \
			+luci-app-unblockmusic \
			+luci-app-verysync \
			+luci-app-vnstat \
			+luci-app-webadmin \
			+luci-app-wireguard \
			+luci-app-wrtbwmon \
			+aria2 \
			+@ARIA2_ASYNC_DNS \
			+@ARIA2_BITTORRENT \
			+@ARIA2_COOKIE \
			+@ARIA2_LIBXML2 \
			+@ARIA2_METALINK \
			+@ARIA2_OPENSSL \
			+@ARIA2_SFTP \
			+@ARIA2_WEBSOCKET \
			+cgroupfs-mount \
			+@CGROUPFS_MOUNT_KERNEL_CGROUPS \
			+dockerd \
			+@DOCKER_CGROUP_OPTIONS \
			+@DOCKER_NET_ENCRYPT \
			+@DOCKER_NET_MACVLAN \
			+@DOCKER_NET_OVERLAY \
			+@DOCKER_NET_TFTP \
			+@DOCKER_OPTIONAL_FEATURES \
			+@DOCKER_STO_BTRFS \
			+@DOCKER_STO_EXT4 \
			+6rd \
			+6to4 \
			+antileech \
			+autocore-arm \
			+automount \
			+ipv6helper \
			+cdnspeedtest \
			+ethtool-full \
			+fdisk \
			+cfdisk \
			+cgdisk \
			+gdisk \
			+hd-idle \
			+hdparm \
			+htop \
			+@HTOP_LMSENSORS \
			+hwclock \
			+hwinfo \
			+nano-plus \
			+nginx \
			+nginx-all-module \
			+nginx-mod-luci \
			+nginx-ssl-util \
			+nginx-util \
			+parted \
			+smbinfo \
			+subconverter \
			+vim-fuller \
			+zram-swap \
			+zstd
endef

define Package/nas-settings/description
	Nas device's default software setting.
endef

define Build/Compile
endef

define Package/nas-settings/install
endef

$(eval $(call BuildPackage,nas-settings))
