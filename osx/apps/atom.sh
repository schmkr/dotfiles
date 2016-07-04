DOWNLOAD_URL="https://atom.io/download/mac";
DOWNLOADED_FILE="Atom.zip";
APP_NAME="Atom.app";

http --download ${DOWNLOAD_URL} --output ${DOWNLOADED_FILE};
unzip -q ${DOWNLOADED_FILE};
mv "${APP_NAME}" /Applications;
rm ${DOWNLOADED_FILE};
