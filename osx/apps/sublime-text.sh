http --download http://c758482.r82.cf2.rackcdn.com/Sublime%20Text%20Build%203059.dmg

open Sublime*.dmg;

sleep 5s;

cp -r /Volumes/Sublime\ Text/Sublime\ Text.app /Applications/;

umount /Volumes/Sublime\ Text/Sublime;

rm Sublime*.dmg;
