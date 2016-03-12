# $NetBSD$

BUILDLINK_TREE+=	cinnamon-desktop

.if !defined(CINNAMON_DESKTOP_BUILDLINK3_MK)
CINNAMON_DESKTOP_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.cinnamon-desktop+=	cinnamon-desktop>=2.8.0
BUILDLINK_PKGSRCDIR.cinnamon-desktop?=	../../wip-cinnamon/cinnamon-desktop

.include "../../x11/gtk3/buildlink3.mk"
.include "../../x11/libxkbfile/buildlink3.mk"
.endif	# CINNAMON_DESKTOP_BUILDLINK3_MK

BUILDLINK_TREE+=	-cinnamon-desktop
