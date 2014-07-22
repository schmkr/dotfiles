DOWNLOAD_URL="http://download.spotify.com/SpotifyInstaller.zip";
DOWNLOADED_FILE="SpotifyInstaller.zip";
APP_NAME="Install Spotify.app";
http --download ${DOWNLOAD_URL};
tar -xf ${DOWNLOADED_FILE};

echo "Installing Spotify";
open -W "${APP_NAME}";

#hdiutil attach ${DOWNLOADED_FILE};
# INSTALL_DISK=$(hdiutil attach ${DOWNLOADED_FILE} | tail -n1 | head -n1);
# echo "Mounted dmg to ${INSTALL_DISK:0:12}"

# Open pkg file and tell open to wait
# echo "Please run the wizard that will prompt shortly";
# open -W /Volumes/VirtualBox/VirtualBox.pkg;

# hdiutil detach ${INSTALL_DISK:0:12};
rm ${DOWNLOADED_FILE};
rm -rf "${APP_NAME}";
