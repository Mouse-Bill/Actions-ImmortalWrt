#find ./ | grep Makefile | grep v2ray-geodata | xargs rm -f
#find ./ | grep Makefile | grep mosdns | xargs rm -f

#git clone https://github.com/sbwml/luci-app-mosdns -b v5 package/mosdns
#git clone https://github.com/sbwml/v2ray-geodata package/v2ray-geodata

rm -rf feeds/packages/lang/golang
git clone https://github.com/sbwml/packages_lang_golang -b 23.x feeds/packages/lang/golang

sed -i '/^PKG_BUILD_DEPENDS:=/ !b; /upx\/host/ b; s/$/ upx\/host/' ./feeds/smpackage/speedtest-web/Makefile 
#sed -i 's#\$(STAGING_DIR_HOST)/bin/upx#\$(STAGING_DIR_HOST)/hostpkg/bin/upx#' ./feeds/smpackage/speedtest-web/Makefile 
sed -i 's#\$(STAGING_DIR_HOST)/bin/upx#upx#' ./feeds/smpackage/speedtest-web/Makefile 
