# $NetBSD$

DISTNAME=	cinnamon-settings-daemon-2.8.4
CATEGORIES=	x11
MASTER_SITES=	${MASTER_SITE_GITHUB:=linuxmint/}
GITHUB_PROJECT=	cinnamon-settings-daemon
GITHUB_TAG=	${PKGVERSION_NOREV}

MAINTAINER=	ryoon@NetBSD.org
HOMEPAGE=	https://github.com/linuxmint/cinnamon-settings-daemon
COMMENT=	Cinnamon settings daemon
LICENSE=	gnu-gpl-v2

EXTRACT_USING=	bsdtar

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

.include "../../graphics/hicolor-icon-theme/buildlink3.mk"
.include "../../sysutils/desktop-file-utils/desktopdb.mk"
.include "../../audio/libcanberra/buildlink3.mk"
.include "../../audio/pulseaudio/buildlink3.mk"
.include "../../devel/GConf/buildlink3.mk"
.include "../../wip/colord/buildlink3.mk"
.include "../../graphics/lcms2/buildlink3.mk"
.include "../../print/cups/buildlink3.mk"
.include "../../sysutils/libnotify/buildlink3.mk"
.include "../../sysutils/upower/buildlink3.mk"
.include "../../x11/gtk2/buildlink3.mk"
.include "../../x11/gtk3/buildlink3.mk"
.include "../../wip-cinnamon/libgnomekbd3/buildlink3.mk"
.include "../../wip-cinnamon/cinnamon-desktop/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
