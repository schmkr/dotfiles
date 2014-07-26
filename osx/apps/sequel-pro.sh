DOWNLOAD_URL="https://sequel-pro.googlecode.com/files/sequel-pro-1.0.2.dmg";
DOWNLOADED_FILE="sequel-pro*.dmg";

http --download ${DOWNLOAD_URL};
INSTALL_DISK=$(hdiutil attach -noautoopen -noidme -nobrowse -mountpoint ./here ${DOWNLOADED_FILE} | tail -n1 | head -n1);

# we need sudo for copying, because of some .svn files in the app :(
sudo cp -r ./here/Sequel\ Pro.app /Applications/;

hdiutil detach ${INSTALL_DISK:0:15};
rm ${DOWNLOADED_FILE};
