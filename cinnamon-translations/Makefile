# $NetBSD$

DISTNAME=	cinnamon-translations-2.8.3
CATEGORIES=	x11
MASTER_SITES=	${MASTER_SITE_GITHUB:=linuxmint/}
GITHUB_PROJECT=	cinnamon-translations
GITHUB_TAG=	${PKGVERSION_NOREV}

MAINTAINER=	ryoon@NetBSD.org
HOMEPAGE=	https://github.com/linuxmint/cinnamon-translations
COMMENT=	Translations for Cinnamon Desktop
LICENSE=	gnu-gpl-v2

NO_CONFIGURE=	yes
USE_TOOLS+=	msgfmt

# Build and install are combined.
NO_BUILD=	yes
INSTALL_TARGET=	all

SUBST_CLASSES+=			fix-install
SUBST_STAGE.fix-install=	pre-install
SUBST_MESSAGE.fix-install=	Fixing installation directory
SUBST_FILES.fix-install+=	Makefile
SUBST_SED.fix-install+=		-e 's,usr/share,${DESTDIR}${PREFIX}/share,g'

.include "../../mk/bsd.pkg.mk"
