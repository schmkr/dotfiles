DOWNLOAD_URL="https://atom.io/download/mac";
DOWNLOADED_FILE="Atom.zip";
APP_NAME="Atom.app";

http --download --output ${DOWNLOADED_FILE} ${DOWNLOAD_URL};
unzip -q ${DOWNLOADED_FILE};
mv "${APP_NAME}" /Applications;
rm ${DOWNLOADED_FILE};