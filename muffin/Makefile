# $NetBSD$

DISTNAME=	muffin-2.8.5
CATEGORIES=	wm
MASTER_SITES=	${MASTER_SITE_GITHUB:=linuxmint/}
GITHUB_PROJECT=	muffin
GITHUB_TAG=	${PKGVERSION_NOREV}

MAINTAINER=	ryoon@NetBSD.org
HOMEPAGE=	https://github.com/linuxmint/muffin
COMMENT=	Muffin Window Manager
LICENSE=	gnu-gpl-v2

BUILD_DEPENDS+=	gnome-common-[0-9]*:../../devel/gnome-common
DEPENDS+=	zenity-[0-9]*:../../wip/zenity
DEPENDS+=	adwaita-icon-theme-[0-9]*:../../graphics/adwaita-icon-theme

GNU_CONFIGURE=		yes
USE_TOOLS+=		automake gmake intltool pkg-config
CONFIGURE_SCRIPT=	autogen.sh

PKGCONFIG_OVERRIDE+=	src/muffin-plugins.pc.in

.include "../../devel/gettext-lib/buildlink3.mk"
.include "../../devel/glib2/schemas.mk"
.include "../../devel/glib2/buildlink3.mk"
.include "../../devel/gobject-introspection/buildlink3.mk"
.include "../../graphics/cogl/buildlink3.mk"
.include "../../graphics/clutter/buildlink3.mk"
.include "../../textproc/gnome-doc-utils/buildlink3.mk"
.include "../../textproc/gtk-doc/buildlink3.mk"
.include "../../x11/gtk3/buildlink3.mk"
.include "../../wip-cinnamon/cinnamon-desktop/buildlink3.mk"
.include "../../sysutils/desktop-file-utils/desktopdb.mk"
.include "../../mk/bsd.pkg.mk"
