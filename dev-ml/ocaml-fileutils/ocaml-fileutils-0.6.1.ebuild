# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5

OASIS_BUILD_DOCS=1
OASIS_BUILD_TESTS=1

inherit oasis

DESCRIPTION="Pure OCaml functions to manipulate real file (POSIX like) and filename"
HOMEPAGE="https://github.com/gildor478/ocaml-fileutils"
SRC_URI="https://github.com/gildor478/ocaml-fileutils/releases/download/v0.6.1/fileutils-v${PV}.tbz"

LICENSE="LGPL-2.1-with-linking-exception"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=""
DEPEND="${RDEPEND}
	>=dev-ml/ounit-2.0.0"

pkg_setup(){
	mv /usr/portage/distfiles/fileutils-v${PV}.tbz /usr/portage/distfiles/${P}.tbz
}

DOCS=( "AUTHORS.txt" "README.txt" "CHANGELOG.txt" "TODO.txt" )