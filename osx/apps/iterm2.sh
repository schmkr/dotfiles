DOWNLOAD_URL="https://iterm2.com/downloads/stable/iTerm2_v2_0.zip";
DOWNLOADED_FILE="iTerm2*.zip";
APP_NAME="iTerm.app";

http --download ${DOWNLOAD_URL};
tar -xf ${DOWNLOADED_FILE};
mv "${APP_NAME}" /Applications;
rm ${DOWNLOADED_FILE};
