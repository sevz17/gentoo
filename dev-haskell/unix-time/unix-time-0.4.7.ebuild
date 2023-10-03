# Copyright 1999-2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.6.1

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Unix time parser/formatter and utilities"
HOMEPAGE="https://hackage.haskell.org/package/unix-time"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="amd64 ~arm64 ~ppc64 ~riscv ~x86"
IUSE=""

RESTRICT=test # QuickCheck finds counterxamples:
#  test/UnixTimeSpec.hs:53:9:
#  1) UnixTime, parseUnixTimeGMT & formatUnixTimeGMT, inverses the result (2)
#       Falsifiable (after 1 test):
#         UnixTime {utSeconds = 747130527, utMicroSeconds = 819438}

RDEPEND="dev-haskell/old-time:=[profile?]
	>=dev-lang/ghc-7.4.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.18
	test? ( >=dev-haskell/doctest-0.9.3
		>=dev-haskell/hspec-2.6
		dev-haskell/old-locale
		dev-haskell/quickcheck )
"
