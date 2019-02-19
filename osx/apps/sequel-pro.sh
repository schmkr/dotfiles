DOWNLOAD_URL="https://github.com/sequelpro/sequelpro/releases/download/release-1.1.2/sequel-pro-1.1.2.dmg";
DOWNLOADED_FILE="sequel-pro.dmg";

http --download --output ${DOWNLOADED_FILE} ${DOWNLOAD_URL};
INSTALL_DISK=$(hdiutil attach -noautoopen -noidme -nobrowse -mountpoint ./here ${DOWNLOADED_FILE} | tail -n1 | head -n1);

# we need sudo for copying, because of some .svn files in the app :(
cp -r ./here/Sequel\ Pro.app /Applications/;

hdiutil detach ${INSTALL_DISK:0:15};
rm ${DOWNLOADED_FILE};
