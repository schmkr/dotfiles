DOWNLOAD_URL="http://cachefly.alfredapp.com/Alfred_2.3_264.zip" ;
DOWNLOADED_FILE="Alfred*.zip";
APP_NAME="Alfred 2.app";

http --download ${DOWNLOAD_URL};
tar -xf ${DOWNLOADED_FILE};
mv "${APP_NAME}" /Applications;
rm ${DOWNLOADED_FILE};
