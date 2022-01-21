#!/bin/sh
#
OPENVERSION="$(wget -qO- https://api.github.com/repos/Sirherobrine23/OPenwrt-X64/releases | jq -r '.[0].tag_name')"
[ -z $OPENVERSION ] && exit 0
URL="https://github.com/Sirherobrine23/WR941NDv3-OpenWRTBuild/releases/download/${OPENVERSION}/"
# sysupgrade -c "$URL"
echo ${URL}
exit 0