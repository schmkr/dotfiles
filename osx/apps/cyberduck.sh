DOWNLOAD_URL="https://update.cyberduck.io/Cyberduck-5.0.3.20504.zip";
DOWNLOADED_FILE="Cyberduck.zip";
APP_NAME="Cyberduck.app";

http --download --output ${DOWNLOADED_FILE} ${DOWNLOAD_URL};
tar -xf ${DOWNLOADED_FILE};
mv "${APP_NAME}" /Applications;
rm ${DOWNLOADED_FILE};
