# Copyright 2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

DESCRIPTION="Shim to substitute 'Pervasives' with 'Stdlib' before 4.08."
HOMEPAGE="https://github.com/ocaml/stdlib-shims"
SRC_URI="https://github.com/ocaml/stdlib-shims/releases/download/0.2.0/stdlib-shims-${PV}.tbz"

LICENSE="LGPL-2.1-with-linking-exception"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}
	dev-ml/dune"
BDEPEND=""

src_compile(){
dune build  --build-dir=${WORKDIR} 
}

src_install(){
	
	dune install --build-dir=${WORKDIR}
	return
}
