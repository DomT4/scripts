Wireshark Upstream Patch
=======

Works [this commit](https://code.wireshark.org/review/#/c/3963/2/packaging/macosx/osx-app.sh,unified) from upstream into Homebrew patch format. The upstream patch ensures Wireshark built with qt is still named wireshark, thus helping bin/application links find each other successfully.