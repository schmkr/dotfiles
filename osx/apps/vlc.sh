set -euo pipefail

APP_NAME="Vlc.app"
DOWNLOADED_FILE="vlc.dmg";
DOWNLOAD_URL="http://get.videolan.org/vlc/3.0.11.1/macosx/vlc-3.0.11.1.dmg";

echo "Downloading ${APP_NAME} from ${DOWNLOAD_URL}";
curl --location --output ${DOWNLOADED_FILE} ${DOWNLOAD_URL};

echo "Mounting ${DOWNLOADED_FILE}";
INSTALL_DISK=$(hdiutil attach -noautoopen -nobrowse -mountpoint ./here ${DOWNLOADED_FILE} | tail -n1 | head -n1);

echo "Removing old installations";
rm -rf ~/Applications/"${APP_NAME}";

echo "Copying ${APP_NAME} to ~/Applications";
cp -r ./here/"${APP_NAME}" ~/Applications;

echo "Unmounting ${DOWNLOADED_FILE}";
hdiutil detach ${INSTALL_DISK:0:12};

echo "Removing ${DOWNLOADED_FILE}";
rm ${DOWNLOADED_FILE};

echo "Done ✅";
