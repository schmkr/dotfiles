DOWNLOAD_URL="https://downloads.atlassian.com/software/sourcetree/SourceTree_2.3.1.zip";
DOWNLOADED_FILE="SourceTree*.zip";

APP_NAME="SourceTree.app";

http --download ${DOWNLOAD_URL};
tar -xf ${DOWNLOADED_FILE};
mv "${APP_NAME}" /Applications;
rm ${DOWNLOADED_FILE};
