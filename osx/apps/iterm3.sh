set -euo pipefail

DOWNLOAD_URL="https://iterm2.com/downloads/stable/iTerm2-3_2_7.zip";
DOWNLOADED_FILE="iTerm2.zip";
APP_NAME="iTerm.app";

echo "Downloading ${APP_NAME} from ${DOWNLOAD_URL}";
curl --silent --output ${DOWNLOADED_FILE} ${DOWNLOAD_URL};

echo "Unpacking ${DOWNLOADED_FILE}";
unzip -q ${DOWNLOADED_FILE};

echo "Removing old installations"
rm -rf /Applications/"${APP_NAME}"

echo "Copying ${APP_NAME} to /Applications"
cp -r ./here/"${APP_NAME}" /Applications;

echo "Removing ${DOWNLOADED_FILE}"
rm ${DOWNLOADED_FILE};

echo "Done ✅";
