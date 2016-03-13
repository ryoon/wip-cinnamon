# $NetBSD$

DISTNAME=	Cinnamon-2.8.7
PKGNAME=	${DISTNAME:tl}
CATEGORIES=	x11
MASTER_SITES=	${MASTER_SITE_GITHUB:=linuxmint/}
GITHUB_PROJECT=	Cinnamon
GITHUB_TAG=	${PKGVERSION_NOREV}

MAINTAINER=	ryoon@NetBSD.org
HOMEPAGE=	https://github.com/linuxmint/Cinnamon
COMMENT=	Cinnamon Desktop Environment
LICENSE=	gnu-gpl-v2

BUILD_DEPENDS+=	gnome-common-[0-9]*:../../devel/gnome-common

GNU_CONFIGURE=	yes
USE_TOOLS+=	automake gmake intltool pkg-config

CONFIGURE_SCRIPT=	autogen.sh

PKGCONFIG_OVERRIDE+=	shell/libcinnamon-control-center.pc.in

MAKE_DIRS=	${PKG_SYSCONFDIR}/menus ${PKG_SYSCONFDIR}/autostart
EGDIR=		${PREFIX}/share/examples/cinnamon-control-center
CONF_FILES+=	${EGDIR}/cinnamoncc.menu ${PKG_SYSCONFDIR}/menus/cinnamoncc.menu
CONF_FILES+=	${EGDIR}/cinnamon-sound-applet.desktop \
		${PKG_SYSCONFDIR}/autostart/cinnamon-sound-applet.desktop

#.include "../../graphics/hicolor-icon-theme/buildlink3.mk"
#.include "../../sysutils/desktop-file-utils/desktopdb.mk"
#.include "../../audio/libcanberra/buildlink3.mk"
#.include "../../audio/pulseaudio/buildlink3.mk"
#.include "../../graphics/lcms2/buildlink3.mk"
.include "../../net/libsoup/buildlink3.mk"
.include "../../security/libgnome-keyring/buildlink3.mk"
.include "../../sysutils/dbus-glib/buildlink3.mk"
#.include "../../sysutils/libnotify/buildlink3.mk"
.include "../../textproc/gtk-doc/buildlink3.mk"
#.include "../../textproc/iso-codes/buildlink3.mk"
#.include "../../textproc/libxml2/buildlink3.mk"
.include "../../x11/gtk3/buildlink3.mk"
#.include "../../wip/colord/buildlink3.mk"
.include "../../wip/polkit/buildlink3.mk"
.include "../../wip-cinnamon/cinnamon-desktop/buildlink3.mk"
.include "../../wip-cinnamon/cinnamon-menu/buildlink3.mk"
.include "../../wip-cinnamon/libgnomekbd3/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
