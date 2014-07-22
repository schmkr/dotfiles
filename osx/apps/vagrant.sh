DOWNLOAD_URL="https://dl.bintray.com/mitchellh/vagrant/vagrant_1.6.3.dmg";
DOWNLOADED_FILE="vagrant_*.dmg";

http --download ${DOWNLOAD_URL};

#hdiutil attach ${DOWNLOADED_FILE};
INSTALL_DISK=$(hdiutil attach ${DOWNLOADED_FILE} | tail -n1 | head -n1);

open -W /Volumes/Vagrant/Vagrant.pkg;

hdiutil detach ${INSTALL_DISK:0:15};
rm ${DOWNLOADED_FILE};
