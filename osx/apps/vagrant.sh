DOWNLOAD_URL="https://dl.bintray.com/mitchellh/vagrant/vagrant_1.6.3.dmg";
DOWNLOADED_FILE="vagrant_*.dmg";

http --download ${DOWNLOAD_URL};

INSTALL_DISK=$(hdiutil attach -noautoopen -noidme -nobrowse -mountpoint ./here ${DOWNLOADED_FILE} | tail -n1 | head -n1);

open -W ./here/Vagrant.pkg;

hdiutil detach ${INSTALL_DISK:0:15};
rm ${DOWNLOADED_FILE};
