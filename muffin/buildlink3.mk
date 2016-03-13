# $NetBSD$

BUILDLINK_TREE+=	muffin

.if !defined(MUFFIN_BUILDLINK3_MK)
MUFFIN_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.muffin+=	muffin>=2.8.5
BUILDLINK_PKGSRCDIR.muffin?=	../../wip-cinnamon/muffin

#.include "../../devel/gettext-lib/buildlink3.mk"
#.include "../../devel/glib2/buildlink3.mk"
#.include "../../devel/gobject-introspection/buildlink3.mk"
#.include "../../graphics/cogl/buildlink3.mk"
#.include "../../graphics/clutter/buildlink3.mk"
#.include "../../textproc/gnome-doc-utils/buildlink3.mk"
#.include "../../textproc/gtk-doc/buildlink3.mk"
#.include "../../x11/gtk3/buildlink3.mk"
#.include "../../wip-cinnamon/cinnamon-desktop/buildlink3.mk"
.endif	# MUFFIN_BUILDLINK3_MK

BUILDLINK_TREE+=	-muffin
