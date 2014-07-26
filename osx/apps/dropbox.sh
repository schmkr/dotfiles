DOWNLOAD_URL="https://www.dropbox.com/download?plat=mac";
DOWNLOADED_FILE="DropboxInstaller.dmg";

http --download ${DOWNLOAD_URL};
INSTALL_DISK=$(hdiutil attach -noautoopen -noidme -nobrowse -mountpoint ./here ${DOWNLOADED_FILE} | tail -n1 | head -n1);

open -W ./here/Dropbox.app;

hdiutil detach ${INSTALL_DISK:0:15};
rm ${DOWNLOADED_FILE};
