http --download https://sequel-pro.googlecode.com/files/sequel-pro-1.0.2.dmg;

hdiutil attach sequel-pro*.dmg;

mkdir ./sequel-test;
sudo cp -r /Volumes/Sequel\ Pro*/Sequel\ Pro.app ./sequel-test/;

umount /Volumes/Sequel\ Pro */;
rm sequel-pro*.dmg;
