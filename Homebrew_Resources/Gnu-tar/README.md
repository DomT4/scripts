Gnu-tar
======

Patch explanations:
*********************************************************
* 0001-xattrs-fix-bug-in-configure.patch - Fixes compile issues on gnu-tar 1.28 on OS X. The issues are based around the xattr inclusion, which theoretically should’ve been an issue with previous gnu-tar versions but for some reason wasn’t. This patch is only necessary for versions 1.28 onwards.

After applying this patch with -p1 you’ll need to autoreconf the
untarred package, at which point you can configure & make error free.
*********************************************************
