DOWNLOAD_URL="https://central.github.com/mac/latest";
DOWNLOADED_FILE="GitHub-Desktop.zip";
APP_NAME="GitHub Desktop.app";

http --download --output ${DOWNLOADED_FILE} ${DOWNLOAD_URL};
unzip -q ${DOWNLOADED_FILE};
mv "${APP_NAME}" /Applications;
rm ${DOWNLOADED_FILE};
