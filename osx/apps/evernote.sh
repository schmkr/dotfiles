http --download http://evernote.com/download/get.php?file=EvernoteMac

open Evernote*.dmg

# sleep longer, since we need to confirm a dialog when opening the dmg
sleep 20s;

cp -r /Volumes/Evernote/Evernote.app /Applications/;

umount /Volumes/Evernote;

rm Evernote*.dmg
