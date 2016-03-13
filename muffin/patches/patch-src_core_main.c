$NetBSD$

* Use common include file

--- src/core/main.c.orig	2016-03-07 17:14:38.000000000 +0000
+++ src/core/main.c
@@ -62,7 +62,7 @@
 
 #include <stdlib.h>
 #include <sys/types.h>
-#include <wait.h>
+#include <sys/wait.h>
 #include <stdio.h>
 #include <string.h>
 #include <signal.h>
