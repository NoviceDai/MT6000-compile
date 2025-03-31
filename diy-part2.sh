#!/bin/bash

# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds  before install feeds )
#

#Tor ...change default ver 0.4.7.19/...to ver 0.4.0.4.8.1-alpha 
#sed -i "/PKG_VERSION:/cPKG_VERSION:=0.4.8.1-alpha"  feeds/packages/net/tor/Makefile
#sed -i "/PKG_HASH:/cPKG_HASH:=f73719a8cec65ce473fae19485b3b89e767a26b20fa9e172052df2cfd4f92e51"  feeds/packages/net/tor/Makefile

# 到kenzok8的github仓库页面看删除哪些冲突 
#delete conflict packages 
rm -rf feeds/smpackage/{amule,luci-app-bandwidthd,luci-app-dogcom,luci-app-gowebdav,natflow}
rm -rf feeds/smpackage/{luci-app-fullconenat,luci-app-natter,luci-app-npc,luci-app-unblockmusic,natter,UnblockNeteaseMusic-Go,nps}

#delete recursive dependency
rm -rf feeds/smpackage/{luci-app-torbp,luci-app-easymesh,mentohust}

#relplace go version 
rm -rf feeds/packages/lang/golang
git clone https://github.com/kenzok8/golang feeds/packages/lang/golang
 