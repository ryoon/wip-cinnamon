# $NetBSD$

DISTNAME=	cinnamon-menu-2.8.0
CATEGORIES=	wip-cinnamon
MASTER_SITES=	${MASTER_SITE_GITHUB:=linuxmint/}
GITHUB_PROJECT=	cinnamon-menus
GITHUB_TAG=	2.8.0

MAINTAINER=	ryoon@NetBSD.org
HOMEPAGE=	https://github.com/linuxmint/cinnamon-menus
COMMENT=	TODO: Short description of the package
#LICENSE=	# TODO: (see mk/license.mk)

BUILD_DEPENDS+=	gnome-common-[0-9]*:../../devel/gnome-common

GNU_CONFIGURE=	yes
USE_TOOLS+=	automake pkg-config

PKGCONFIG_OVERRIDE+=	libmenu/libcinnamon-menu-3.0.pc.in

pre-configure:
	set -e; cd ${WRKSRC}; \
	autoreconf -fiv

.include "../../devel/glib2/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
