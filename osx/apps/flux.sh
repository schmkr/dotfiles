set -euo pipefail

APP_NAME="Flux.app";
DOWNLOAD_URL="https://justgetflux.com/mac/Flux.zip";
DOWNLOADED_FILE="Flux.zip";

echo "Downloading ${APP_NAME} from ${DOWNLOAD_URL}";
curl --location --output ${DOWNLOADED_FILE} ${DOWNLOAD_URL};

echo "Unpacking ${DOWNLOADED_FILE}";
unzip -q ${DOWNLOADED_FILE} -d ./here;

echo "Removing old installations";
rm -rf ~/Applications/"${APP_NAME}";

echo "Copying ${APP_NAME} to ~/Applications";
cp -r ./here/"${APP_NAME}" ~/Applications;

echo "Removing ${DOWNLOADED_FILE}";
rm ${DOWNLOADED_FILE};

echo "Done ✅";
