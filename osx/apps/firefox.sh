DOWNLOAD_URL="https://download.mozilla.org/?product=firefox-latest&os=osx&lang=en-US";
DOWNLOADED_FILE="Firefox.dmg";

http --download --output ${DOWNLOADED_FILE} ${DOWNLOAD_URL};
INSTALL_DISK=$(hdiutil attach -noautoopen -noidme -nobrowse -mountpoint ./here ${DOWNLOADED_FILE} | tail -n1 | head -n1);
echo "Mounted dmg to ${INSTALL_DISK:0:12}"

cp -r ./here/Firefox.app /Applications;
echo "Copied Firefox.app to /Applications";

hdiutil detach ${INSTALL_DISK:0:12};
rm ${DOWNLOADED_FILE};
echo "Done";
