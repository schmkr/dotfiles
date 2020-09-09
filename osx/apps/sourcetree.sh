set -euo pipefail

APP_NAME="Sourcetree.app";
DOWNLOADED_FILE="Sourcetree.zip";
DOWNLOAD_URL="https://product-downloads.atlassian.com/software/sourcetree/ga/Sourcetree_4.0.2_236.zip";

echo "Downloading ${APP_NAME} from ${DOWNLOAD_URL}";
curl --location --output ${DOWNLOADED_FILE} ${DOWNLOAD_URL};

echo "Unpacking ${DOWNLOADED_FILE}";
unzip -q ${DOWNLOADED_FILE} -d ./here;

echo "Removing old installations"
rm -rf ~/Applications/"${APP_NAME}"

echo "Copying ${APP_NAME} to ~/Applications"
cp -r ./here/"${APP_NAME}" ~/Applications;

echo "Removing ${DOWNLOADED_FILE}"
rm ${DOWNLOADED_FILE};

echo "Done ✅";
