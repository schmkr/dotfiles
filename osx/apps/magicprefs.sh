DOWNLOAD_URL="http://magicprefs.com/MagicPrefs.app.zip";
DOWNLOADED_FILE="MagicPrefs*.zip";
APP_NAME="MagicPrefs.app";

http --download ${DOWNLOAD_URL};
tar -xf ${DOWNLOADED_FILE};
mv "${APP_NAME}" /Applications;
rm ${DOWNLOADED_FILE};

# Launch the application
open /Applications/${APP_NAME};
