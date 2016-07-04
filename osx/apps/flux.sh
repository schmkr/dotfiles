DOWNLOAD_URL="https://justgetflux.com/mac/Flux.zip";
DOWNLOADED_FILE="Flux.zip";
APP_NAME="Flux.app";

http --download ${DOWNLOAD_URL};
tar -xf ${DOWNLOADED_FILE};
mv "${APP_NAME}" /Applications;
rm ${DOWNLOADED_FILE};
