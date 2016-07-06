DOWNLOAD_URL="https://cachefly.alfredapp.com/Alfred_3.0.2_676.zip" ;
DOWNLOADED_FILE="Alfred.zip";
APP_NAME="Alfred 3.app";

http --download --output ${DOWNLOADED_FILE} ${DOWNLOAD_URL};
tar -xf ${DOWNLOADED_FILE};
mv "${APP_NAME}" /Applications;
rm ${DOWNLOADED_FILE};
