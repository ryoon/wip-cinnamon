# $NetBSD$

DISTNAME=	libgnomekbd-3.6.0
CATEGORIES=	x11
MASTER_SITES=	${MASTER_SITE_GNOME:=sources/libgnomekbd/3.6/}
EXTRACT_SUFX=	.tar.xz

MAINTAINER=	ryoon@NetBSD.org
HOMEPAGE=	http://ftp.gnome.org/pub/GNOME/sources/libgnomekbd/3.6/
COMMENT=	Gnome keyboard configuration library
LICENSE=	gnu-lgpl-v2

GNU_CONFIGURE=	yes
USE_LIBTOOL=	yes
USE_TOOLS+=	gmake intltool pkg-config

PKGCONFIG_OVERRIDE+=	libgnomekbd.pc.in
PKGCONFIG_OVERRIDE+=	libgnomekbdui.pc.in

.include "../../sysutils/desktop-file-utils/desktopdb.mk"
.include "../../devel/glib2/buildlink3.mk"
.include "../../x11/gtk3/buildlink3.mk"
.include "../../x11/libxklavier/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
