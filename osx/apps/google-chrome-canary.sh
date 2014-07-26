DOWNLOAD_URL="https://storage.googleapis.com/chrome-canary/GoogleChromeCanary.dmg";
DOWNLOADED_FILE="GoogleChromeCanary.dmg";

http --download ${DOWNLOAD_URL};
INSTALL_DISK=$(hdiutil attach -noautoopen -noidme -nobrowse -mountpoint ./here ${DOWNLOADED_FILE} | tail -n1 | head -n1);

cp -r ./here/Google\ Chrome\ Canary.app /Applications/;

hdiutil detach ${INSTALL_DISK:0:15};
rm ${DOWNLOADED_FILE};
