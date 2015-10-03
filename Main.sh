#!/bin/sh

# Desktop Creator!
# This program is licensed under the Eclipse Public License v1.0

# Uncomment line bellow if this is modified
#bash <(curl -s https://raw.githubusercontent.com/AppIns/Desktop-Creator/master/Extra/modified.sh)

# Need help? Email me! AlexAndersonOne@gmail.com

echo -n "Supply a file (Drag here):";
read filename;

cd ~/Desktop/;
stamp=$(date);
# Stamps all beta_info files
mkdir beta_info;
cd beta_info;
# Beta folder... Used to help understand problems.
echo "Hi! This folder contains info about the desktop that was created
Failure? Email this folder to AlexAndersonOne@gmail.com
Genorated $stamp" > Welcome.txt
# Please uncomment the line bellow if the is code is modified.
#echo "This file has been modified by . $stamp" > mod.txt
echo "Info [
  Command: bash $filename,
  Terminal: True,
  Type: Application,
  Source: GitHub.com/AppIns/Desktop-Creator
  Version: v0.0.4 Revision 3
]

  This file was gen: $stamp
  Failure? Email this whole folder to AlexAndersonOne@gmail.com.

  Thanks!
" > Info.txt;
cd ..;

# This is where the genoration happens
echo "[Desktop Entry]
Type=Application
Exec=bash $filename
Terminal=true" > "Start.desktop";

chmod +x Start.desktop;

echo "Done!"
exit;
