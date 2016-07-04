DOWNLOAD_URL="https://www.sparklabs.com/downloads/Viscosity.dmg";
DOWNLOADED_FILE="Viscosity.dmg";

http --download ${DOWNLOAD_URL} --output ${DOWNLOADED_FILE};
INSTALL_DISK=$(hdiutil attach -noautoopen -noidme -nobrowse -mountpoint ./here ${DOWNLOADED_FILE} | tail -n1 | head -n1);
echo "Mounted dmg to ${INSTALL_DISK:0:12}"

cp -r ./here/Viscosity.app /Applications;
echo "Copied Firefox.app to /Applications";

hdiutil detach ${INSTALL_DISK:0:12};
rm ${DOWNLOADED_FILE};
echo "Done";
