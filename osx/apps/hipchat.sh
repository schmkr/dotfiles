DOWNLOAD_URL="https://www.hipchat.com/downloads/latest/mac";
DOWNLOADED_FILE="HipChat*.zip";
APP_NAME="HipChat.app";

http --download ${DOWNLOAD_URL};
tar -xf ${DOWNLOADED_FILE};
mv "${APP_NAME}" /Applications;

rm ${DOWNLOADED_FILE};
