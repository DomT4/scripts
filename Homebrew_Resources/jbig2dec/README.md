Jbig2dec.
=======

Patch for jbig2dec stable to fix the issue of jbig2dec linking into now private libpng headers and consequently breaking the build when compiled against a modern libpng.

Patch originates from upstream; Just modified here to remove the `jbig2_text.c` element as that doesn’t apply cleanly and is non-essential.

[Upstream bug report](http://bugs.ghostscript.com/show_bug.cgi?id=695890).
[Upstream patch](http://git.ghostscript.com/?p=ghostpdl.git;a=patch;h=b3fc1892).

**NOTE: As this patch comes from upstream it is licensed per upstream’s license, which is the GNU Affero General Public License**.
