# Copyright 1999-2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.6.9999
#hackport: flags: -allwarnings,+separatesyb,+usebytestrings,+splitbase,+iecfpextension

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Analysis and generation of C code"
HOMEPAGE="http://visq.github.io/language-c/"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="amd64 ~arm64 ~ppc64 ~riscv ~x86"
IUSE=""

RDEPEND="dev-haskell/syb:=[profile?]
	>=dev-lang/ghc-7.10.1:=
"
DEPEND="${RDEPEND}
	dev-haskell/alex
	>=dev-haskell/cabal-1.22.2.0
	dev-haskell/happy
"

PATCHES=(
	"${FILESDIR}"/${PN}-0.8.3-gcc-11.patch
)

src_configure() {
	haskell-cabal_src_configure \
		--flag=-allwarnings \
		--flag=iecfpextension \
		--flag=separatesyb \
		--flag=splitbase \
		--flag=usebytestrings
}
