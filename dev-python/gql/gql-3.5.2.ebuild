# Copyright 2022-2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DISTUTILS_USE_PEP517=setuptools
PYTHON_COMPAT=( python3_{10..13} )

inherit distutils-r1

DESCRIPTION="GraphQL client for Python"
HOMEPAGE="https://github.com/graphql-python/gql"
SRC_URI="https://github.com/graphql-python/gql/archive/refs/tags/v${PV}.tar.gz -> ${P}.gh.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"

RDEPEND="dev-python/graphql-core dev-python/backoff dev-python/requests-toolbelt"

distutils_enable_tests pytest
