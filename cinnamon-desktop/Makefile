# $NetBSD$

DISTNAME=	cinnamon-desktop-2.8.1
CATEGORIES=	x11
MASTER_SITES=	${MASTER_SITE_GITHUB:=linuxmint/}
GITHUB_PROJECT=	cinnamon-desktop
GITHUB_TAG=	${PKGVERSION_NOREV}

MAINTAINER=	ryoon@NetBSD.org
HOMEPAGE=	https://github.com/linuxmint/cinnamon-desktop
COMMENT=	Cinnamon Desktop library
LICENSE=	gnu-gpl-v2

BUILD_DEPENDS+=	gnome-common-[0-9]*:../../devel/gnome-common

GNU_CONFIGURE=	yes
USE_TOOLS+=	automake gmake intltool pkg-config

PKGCONFIG_OVERRIDE+=	libcinnamon-desktop/cinnamon-desktop-uninstalled.pc.in
PKGCONFIG_OVERRIDE+=	libcinnamon-desktop/cinnamon-desktop.pc.in

pre-configure:
	set -e; cd ${WRKSRC}; \
	autoreconf -fiv

SUBST_CLASSES+=			fix-install
SUBST_STAGE.fix-install=	pre-configure
SUBST_MESSAGE.fix-install=	Fixing non-portable find arguments
SUBST_FILES.fix-install+=	files/Makefile.am
SUBST_SED.fix-install+=		-e 's,find -mindepth 1 -maxdepth 1 ,find ./ ,g'

.include "../../devel/gettext-lib/buildlink3.mk"
.include "../../devel/glib2/buildlink3.mk"
.include "../../devel/gobject-introspection/buildlink3.mk"
.include "../../graphics/gdk-pixbuf2/buildlink3.mk"
.include "../../x11/gtk3/buildlink3.mk"
.include "../../x11/libXrandr/buildlink3.mk"
.include "../../x11/libXext/buildlink3.mk"
.include "../../x11/xkeyboard-config/buildlink3.mk"
.include "../../x11/libxkbfile/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
