http --download https://storage.googleapis.com/chrome-canary/GoogleChromeCanary.dmg

open GoogleChromeCanary.dmg

sleep 10s;

cp -r /Volumes/Google\ Chrome\ Canary/Google\ Chrome\ Canary.app /Applications/;

umount /Volumes/Google\ Chrome\ Canary;

rm GoogleChromeCanary.dmg
