DOWNLOAD_URL="https://storage.googleapis.com/chrome-canary/GoogleChromeCanary.dmg";
DOWNLOADED_FILE="GoogleChromeCanary.dmg";

http --download ${DOWNLOAD_URL};
INSTALL_DISK=$(hdiutil attach ${DOWNLOADED_FILE} | tail -n1 | head -n1);

cp -r /Volumes/Google\ Chrome\ Canary/Google\ Chrome\ Canary.app /Applications/;

hdiutil detach ${INSTALL_DISK:0:15};
rm ${DOWNLOADED_FILE};
