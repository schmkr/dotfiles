DOWNLOAD_URL="https://get.videolan.org/vlc/3.0.3/macosx/vlc-3.0.3.dmg";
DOWNLOADED_FILE="vlc.dmg";

http --download --output ${DOWNLOADED_FILE} ${DOWNLOAD_URL};

INSTALL_DISK=$(hdiutil attach -noautoopen -noidme -nobrowse -mountpoint ./here ${DOWNLOADED_FILE} | tail -n1 | head -n1);
echo "Mounted dmg to ${INSTALL_DISK:0:12}"

cp -r ./here/Vlc.app /Applications;
echo "Copied Vlc.app to /Applications";

hdiutil detach ${INSTALL_DISK:0:12};
rm ${DOWNLOADED_FILE};
echo "Done";
