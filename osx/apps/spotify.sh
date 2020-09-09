set -euo pipefail

APP_NAME="Install Spotify.app";
DOWNLOAD_URL="http://download.spotify.com/SpotifyInstaller.zip";
DOWNLOADED_FILE="SpotifyInstaller.zip";

echo "Downloading ${APP_NAME} from ${DOWNLOAD_URL}";
curl --location --output ${DOWNLOADED_FILE} ${DOWNLOAD_URL};

echo "Unpacking ${DOWNLOADED_FILE}";
unzip -q ${DOWNLOADED_FILE};

echo "Removing old installations"
rm -rf /Applications/"${APP_NAME}"

echo "Installing Spotify";
open -W "${APP_NAME}"; # -W tells the open command to wait until the opened app closes again

echo "Removing ${DOWNLOADED_FILE} and ${APP_NAME}"
rm ${DOWNLOADED_FILE};
rm -rf "${APP_NAME}";

echo "Done ✅";
