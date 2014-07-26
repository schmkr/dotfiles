DOWNLOAD_URL="http://get.geo.opera.com/pub/opera/desktop/23.0.1522.60/mac/Opera_23.0.1522.60_Setup.dmg";
DOWNLOADED_FILE="Opera_*.dmg";

http --download ${DOWNLOAD_URL};

# we need to bypass the license agreement from Opera.dmg, so we use yes twice to do this
INSTALL_DISK=$(yes | yes | hdiutil attach -noautoopen -noidme -nobrowse -mountpoint ./here ${DOWNLOADED_FILE} | tail -n1 | head -n1);
echo "Mounted dmg to ${INSTALL_DISK:0:12}"

cp -r ./here/Opera.app /Applications;
echo "Copied Opera.app to /Applications";

hdiutil detach ${INSTALL_DISK:0:12};
rm ${DOWNLOADED_FILE};
echo "Done";
