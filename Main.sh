# Desktop Creator!
# This program is licensed under the Eclipse Public Licsense v1.0

# Uncomment line bellow if this is modified
#bash <(curl -s https://raw.githubusercontent.com/AppIns/Desktop-Creator/master/Extra/modified.sh)


echo -n "Supply a file (Drag):";
read filename;

cd ~/Desktop/;
stamp=$(date);
mkdir beta_info;
cd beta_info;
echo "Hi! This folder contains info about the desktop that was created
Failure? Email this folder to AlexAndersonOne@gmail.com
Genorated $stamp" > Welcome.txt
# Please uncomment the line bellow if the is code is modified.
#echo "This file has been modified by ." > mod.txt
echo "Info [
  Command: bash $filename,
  Terminal: True,
  Type: Application,
  Source: GitHub.com/AppIns/Desktop-Creator
  Version: v0.0.4 Revision 2
]

  This file was genorated $stamp
  Failure? Email this whole folder to AlexAndersonOne.

  Thanks!
" > Info.txt;
cd ..;

echo "[Desktop Entry]
Type=Application
Exec=bash $filename
Terminal=true" > "Start.desktop";

chmod +x Start.desktop;

echo "Done!"
