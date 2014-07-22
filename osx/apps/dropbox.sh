DOWNLOAD_URL="https://www.dropbox.com/download?plat=mac";
DOWNLOADED_FILE="DropboxInstaller.dmg";

http --download ${DOWNLOAD_URL};
INSTALL_DISK=$(hdiutil attach ${DOWNLOADED_FILE} | tail -n1 | head -n1);

open -W /Volumes/Dropbox\ Installer/Dropbox.app;

hdiutil detach ${INSTALL_DISK:0:15};
rm ${DOWNLOADED_FILE};
