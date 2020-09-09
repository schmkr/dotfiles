set -euo pipefail

APP_NAME="ForkLift.app";
DOWNLOAD_URL="https://download.binarynights.com/ForkLift3.3.1.zip";
DOWNLOADED_FILE="ForkLift.zip";

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
