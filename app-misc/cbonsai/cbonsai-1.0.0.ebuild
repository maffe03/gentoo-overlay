# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2
 
EAPI=7
 
DESCRIPTION="cbonsai is a beautifully random bonsai tree generator"
HOMEPAGE="https://gitlab.com/jallbrit/cbonsai"
SRC_URI="https://gitlab.com/jallbrit/${PN}/-/archive/master/${PN}-master.tar.gz"
 
LICENSE="GPL-3+"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
 
DEPEND="sys-libs/ncurses"
RDEPEND="${DEPEND}"
BDEPEND=""

PATCHES=(
   "${FILESDIR}/${PN}.patch"
)

src_unpack() {
   unpack "${PN}-master.tar.gz"
   mv cbonsai-master cbonsai-1.0.0
   echo ${D}
}

src_install() {
	emake install
}
