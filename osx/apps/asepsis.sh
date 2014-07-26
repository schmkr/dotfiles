DOWNLOAD_URL="http://downloads.binaryage.com/Asepsis-1.4.1.dmg" ;
DOWNLOADED_FILE="Asepsis*.dmg";

http --download ${DOWNLOAD_URL};
INSTALL_DISK=$(hdiutil attach -noautoopen -noidme -nobrowse -mountpoint ./here ${DOWNLOADED_FILE} | tail -n1 | head -n1);

open -W ./here/Asepsis.pkg;

hdiutil detach ${INSTALL_DISK:0:15};
rm ${DOWNLOADED_FILE};
