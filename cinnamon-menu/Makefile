# $NetBSD$

DISTNAME=	cinnamon-menu-2.8.0
CATEGORIES=	x11
MASTER_SITES=	${MASTER_SITE_GITHUB:=linuxmint/}
GITHUB_PROJECT=	cinnamon-menus
GITHUB_TAG=	${PKGVERSION_NOREV}

MAINTAINER=	ryoon@NetBSD.org
HOMEPAGE=	https://github.com/linuxmint/cinnamon-menus
COMMENT=	Cinnamon Desktop menu library
LICENSE=	gnu-gpl-v2

BUILD_DEPENDS+=	gnome-common-[0-9]*:../../devel/gnome-common

GNU_CONFIGURE=	yes
USE_TOOLS+=	automake gmake pkg-config

PKGCONFIG_OVERRIDE+=	libmenu/libcinnamon-menu-3.0.pc.in

pre-configure:
	set -e; cd ${WRKSRC}; \
	autoreconf -fiv

.include "../../devel/gettext-lib/buildlink3.mk"
.include "../../devel/glib2/buildlink3.mk"
.include "../../devel/gobject-introspection/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
