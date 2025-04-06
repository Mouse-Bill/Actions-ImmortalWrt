#find ./ | grep Makefile | grep v2ray-geodata | xargs rm -f
#find ./ | grep Makefile | grep mosdns | xargs rm -f

#git clone https://github.com/sbwml/luci-app-mosdns -b v5 package/mosdns
#git clone https://github.com/sbwml/v2ray-geodata package/v2ray-geodata

#rm -rf feeds/packages/lang/golang
#git clone https://github.com/sbwml/packages_lang_golang -b 24.x feeds/packages/lang/golang

#rm -rf feeds/packages/utils/upx
#git clone https://github.com/Mouse-Bill/immortalwrt-upx feeds/packages/utils/upx

#wget https://github.com/coolsnowwolf/lede/raw/44ac9994feddd71e541cbad4683faa41024c771d/package/lean/upx/Makefile -O feeds/packages/utils/upx/Makefile 

sed -i '/^PKG_BUILD_DEPENDS:=/ !b; /upx\/host/ b; s/$/ upx\/host/' ./feeds/smpackage/speedtest-web/Makefile 
#sed -i 's#\$(STAGING_DIR_HOST)/bin/upx#\$(STAGING_DIR_HOST)/hostpkg/bin/upx#' ./feeds/smpackage/speedtest-web/Makefile 
#sed -i 's#\$(STAGING_DIR_HOST)/bin/upx#upx#' ./feeds/smpackage/speedtest-web/Makefile 

#rm -rf package/network/services/odhcpd
#git clone https://github.com/Mouse-Bill/immortalwrt-odhcpd package/network/services/odhcpd

sed -i 's/192.168.1.1/192.168.6.1/g' package/base-files/files/bin/config_generate
