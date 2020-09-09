set -euo pipefail

APP_NAME="Evernote.app";
DOWNLOADED_FILE="Evernote.dmg";
DOWNLOAD_URL="https://cdn1.evernote.com/mac-smd/public/Evernote_RELEASE_7.14_458244.dmg";

echo "Downloading ${APP_NAME} from ${DOWNLOAD_URL}";
curl --silent --output ${DOWNLOADED_FILE} ${DOWNLOAD_URL};

echo "Mounting ${DOWNLOADED_FILE}";
INSTALL_DISK=$(hdiutil attach -noautoopen -noidme -nobrowse -mountpoint ./here ${DOWNLOADED_FILE} | tail -n1 | head -n1);

echo "Removing old installations"
rm -rf ~/Applications/"${APP_NAME}"

echo "Copying ${APP_NAME} to ~/Applications"
cp -r ./here/"${APP_NAME}" ~/Applications;

echo "Unmounting ${DOWNLOADED_FILE}"
hdiutil detach ${INSTALL_DISK:0:12};

echo "Removing ${DOWNLOADED_FILE}"
rm ${DOWNLOADED_FILE};

echo "Done ✅";
