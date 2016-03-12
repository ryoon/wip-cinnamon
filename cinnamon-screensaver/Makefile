# $NetBSD$

DISTNAME=	cinnamon-screensaver-2.8.0
CATEGORIES=	x11
MASTER_SITES=	${MASTER_SITE_GITHUB:=linuxmint/}
GITHUB_PROJECT=	cinnamon-screensaver
GITHUB_TAG=	2.8.0

MAINTAINER=	ryoon@NetBSD.org
HOMEPAGE=	https://github.com/linuxmint/cinnamon-screensaver
COMMENT=	Cinnamon Desktop screensaver
LICENSE=	gnu-gpl-v2

BUILD_DEPENDS+=	gnome-common-[0-9]*:../../devel/gnome-common

GNU_CONFIGURE=	yes
USE_TOOLS+=	automake gmake intltool pkg-config

SUBST_CLASSES+=			fix-install
SUBST_STAGE.fix-install=	pre-configure
SUBST_MESSAGE.fix-install=	Fixing non-portable find arguments
SUBST_FILES.fix-install+=	data/screensavers/Makefile.in
SUBST_FILES.fix-install+=	files/Makefile.in
SUBST_SED.fix-install+=		-e 's,find -mindepth 1 -maxdepth 1 ,find ./ ,g'

REPLACE_PYTHON+=	data/screensavers/webkit@cinnamon.org/main
REPLACE_PYTHON+=	data/screensavers/xscreensaver@cinnamon.org/main

pre-configure:
	set -e; cd ${WRKSRC}; \
	autoreconf -fiv

.include "../../sysutils/desktop-file-utils/desktopdb.mk"
.include "../../devel/glib2/buildlink3.mk"
.include "../../devel/gobject-introspection/buildlink3.mk"
.include "../../lang/python/application.mk"
.include "../../sysutils/dbus-glib/buildlink3.mk"
.include "../../www/webkit-gtk/buildlink3.mk"
.include "../../x11/gtk3/buildlink3.mk"
.include "../../x11/libX11/buildlink3.mk"
.include "../../wip-cinnamon/cinnamon-desktop/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
