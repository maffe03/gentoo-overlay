# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2
 
EAPI=7
 
DESCRIPTION="cbonsai is a beautifully random bonsai tree generator"
HOMEPAGE="https://gitlab.com/jallbrit/cbonsai"
SRC_URI="https://gitlab.com/jallbrit/${PN}/-/archive/v${PV}/${PN}-v${PV}.tar.gz"
 
LICENSE="GPL-3+"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
 
DEPEND="sys-libs/ncurses"
RDEPEND="${DEPEND}"
BDEPEND=""

src_unpack() {
   unpack "${PN}-v${PV}.tar.gz"
   mv ${PN}-v${PV} ${P}
}

src_install() {
   emake DESTDIR=${D} PREFIX="/usr" install
}