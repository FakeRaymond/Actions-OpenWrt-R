#!/bin/bash

# Uncomment a feed source
# sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add a feed source
sed -i "/helloworld/d" "feeds.conf.default"
sed -i "/passwall/d" "feeds.conf.default"
# echo "src-git helloworld https://github.com/fw876/helloworld.git" >> feeds.conf.default
# echo "src-git Passwall https://github.com/xiaorouji/openwrt-passwall.git;luci" >> feeds.conf.default
echo "src-git passwall_packages https://github.com/xiaorouji/openwrt-passwall-packages.git;main" >>"feeds.conf.default"
echo "src-git passwall2 https://github.com/xiaorouji/openwrt-passwall2.git;main" >>"feeds.conf.default"
