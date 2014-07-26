DOWNLOAD_URL="https://get.videolan.org/vlc/2.1.4/macosx/vlc-2.1.4.dmg";
DOWNLOADED_FILE="vlc-*.dmg";

http --download ${DOWNLOAD_URL};

INSTALL_DISK=$(hdiutil attach ${DOWNLOADED_FILE} | tail -n1 | head -n1);
echo "Mounted dmg to ${INSTALL_DISK:0:12}"

cp -r /Volumes/vlc-*/Vlc.app /Applications;
echo "Copied Vlc.app to /Applications";

hdiutil detach ${INSTALL_DISK:0:12};
rm ${DOWNLOADED_FILE};
echo "Done";
