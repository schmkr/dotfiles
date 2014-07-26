DOWNLOAD_URL="http://download.virtualbox.org/virtualbox/4.3.14/VirtualBox-4.3.14-95030-OSX.dmg";
DOWNLOADED_FILE="VirtualBox-*.dmg";
MOUNT_POINT="virtualbox";
http --download ${DOWNLOAD_URL};

INSTALL_DISK=$(hdiutil attach -noautoopen -noidme -nobrowse -mountpoint ./here ${DOWNLOADED_FILE} | tail -n1 | head -n1);
echo "Mounted dmg to ${INSTALL_DISK:0:12}"

# Open pkg file and tell open to wait
echo "Please run the wizard that will prompt shortly";
open -W ./here/VirtualBox.pkg;

hdiutil detach ${INSTALL_DISK:0:12};
rm ${DOWNLOADED_FILE};

echo "Virtualbox sucessfully installed";
