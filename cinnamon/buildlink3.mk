# $NetBSD$

BUILDLINK_TREE+=	cinnamon-control-center

.if !defined(CINNAMON_CONTROL_CENTER_BUILDLINK3_MK)
CINNAMON_CONTROL_CENTER_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.cinnamon-control-center+=	cinnamon-control-center>=2.8.1
BUILDLINK_PKGSRCDIR.cinnamon-control-center?=	../../wip-cinnamon/cinnamon-control-center

.include "../../x11/gtk3/buildlink3.mk"
.endif	# CINNAMON_CONTROL_CENTER_BUILDLINK3_MK

BUILDLINK_TREE+=	-cinnamon-control-center
