# $NetBSD$

BUILDLINK_TREE+=	cinnamon-menu

.if !defined(CINNAMON_MENU_BUILDLINK3_MK)
CINNAMON_MENU_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.cinnamon-menu+=	cinnamon-menu>=2.8.0
BUILDLINK_PKGSRCDIR.cinnamon-menu?=	../../wip-cinnamon/cinnamon-menu

.include "../../devel/gettext-lib/buildlink3.mk"
.include "../../devel/glib2/buildlink3.mk"
.include "../../devel/gobject-introspection/buildlink3.mk"
.endif	# CINNAMON_MENU_BUILDLINK3_MK

BUILDLINK_TREE+=	-cinnamon-menu
