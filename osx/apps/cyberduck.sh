set -euo pipefail

APP_NAME="Cyberduck.app";
DOWNLOAD_URL="https://update.cyberduck.io/Cyberduck-7.5.1.33324.zip";
DOWNLOADED_FILE="Cyberduck.zip";

echo "Downloading ${APP_NAME} from ${DOWNLOAD_URL}";
curl --location --output ${DOWNLOADED_FILE} ${DOWNLOAD_URL};

echo "Unpacking ${DOWNLOADED_FILE}";
unzip -q ${DOWNLOADED_FILE};

echo "Removing old installations"
rm -rf ~/Applications/"${APP_NAME}"

echo "Moving ${APP_NAME} to ~/Applications"
mv "${APP_NAME}" ~/Applications;

echo "Removing ${DOWNLOADED_FILE}"
rm ${DOWNLOADED_FILE};

echo "Done ✅";
