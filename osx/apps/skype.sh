DOWNLOAD_URL="https://www.skype.com/go/getskype-macosx.dmg";
DOWNLOADED_FILE="Skype.dmg";

http --download --output ${DOWNLOADED_FILE} ${DOWNLOAD_URL};
INSTALL_DISK=$(hdiutil attach -noautoopen -noidme -nobrowse -mountpoint ./here ${DOWNLOADED_FILE} | tail -n1 | head -n1);

cp -r ./here/Skype.app /Applications/;

hdiutil detach ${INSTALL_DISK:0:15};
rm ${DOWNLOADED_FILE};
