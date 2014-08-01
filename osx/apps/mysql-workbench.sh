DOWNLOAD_URL="https://dev.mysql.com/get/Downloads/MySQLGUITools/mysql-workbench-community-6.1.7-osx-i686.dmg";
DOWNLOADED_FILE="mysql-workbench-community*.dmg";

http --download ${DOWNLOAD_URL};
INSTALL_DISK=$(hdiutil attach -noautoopen -noidme -nobrowse -mountpoint ./here ${DOWNLOADED_FILE} | tail -n1 | head -n1);

cp -r ./here/MySQLWorkbench.app /Applications/;

hdiutil detach ${INSTALL_DISK:0:15};
rm ${DOWNLOADED_FILE};
