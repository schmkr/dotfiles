DOWNLOAD_URL="https://update.cyberduck.io/Cyberduck-4.4.5.zip";
DOWNLOADED_FILE="Cyberduck*.zip";
APP_NAME="Cyberduck.app";

http --download --verify=no ${DOWNLOAD_URL};
tar -xf ${DOWNLOADED_FILE};
mv "${APP_NAME}" /Applications;
rm ${DOWNLOADED_FILE};
