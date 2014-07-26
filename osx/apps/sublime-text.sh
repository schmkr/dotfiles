DOWNLOAD_URL="http://c758482.r82.cf2.rackcdn.com/Sublime%20Text%20Build%203059.dmg";
DOWNLOADED_FILE="Sublime*.dmg";

http --download ${DOWNLOAD_URL};
INSTALL_DISK=$(hdiutil attach -noautoopen -noidme -nobrowse -mountpoint ./here ${DOWNLOADED_FILE} | tail -n1 | head -n1);

cp -r ./here/Sublime\ Text.app /Applications/;

hdiutil detach ${INSTALL_DISK:0:15};
rm ${DOWNLOADED_FILE};
