# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2
 
EAPI=8
 
inherit desktop

DESCRIPTION="Helper files to make sway a better experience for us poor NVIDIA users."
HOMEPAGE="https://github.com/crispyricepc/sway-nvidia"
SRC_URI="https://github.com/crispyricepc/${PN}/archive/refs/tags/${PV}.tar.gz"
 
LICENSE="FREE"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
 
DEPEND="
    gui-wm/sway
    media-libs/vulkan-layers
"
RDEPEND="${DEPEND}"
BDEPEND=""

wm=sway-nvidia
S="${WORKDIR}/${P}"

src_unpack() {
   unpack "${PV}.tar.gz"
}

src_install() {
   newbin sway-nvidia.sh sway-nvidia
   insinto /usr/share/wayland-sessions
   insopts -m644
   doins sway-nvidia.desktop
   insinto /usr/share/wlroots-nvidia
   doins wlroots-env-nvidia.sh
}
