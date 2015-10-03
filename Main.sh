#!/bin/sh

# Desktop Creator!
# This program is licensed under the Eclipse Public License v1.0

# Uncomment line bellow if this is modified
#bash <(curl -s https://raw.githubusercontent.com/AppIns/Desktop-Creator/master/Extra/modified.sh)


# Need help? Email me! AlexAndersonOne@gmail.com

echo -n "Supply a file or argument: ";
read filename;

# TODO: Add some more bash commands here.
echo "For basic bash the command should be 'bash'";
echo "Most bash commands should work"
echo -n "What command should the file be run with: ";
read Type;

echo -n "What should the file be called: "
read SaveName;

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
  Command: $Type $filename,
  Terminal: True,
  Type: Application,
  Source: GitHub.com/AppIns/Desktop-Creator,
  Name: $SaveName
  Version: v0.1.1 Revision 1
];
User_Info [
  This file was gen: $stamp
  Failure? Email this whole folder to AlexAndersonOne@gmail.com.
]; END;
  Thanks!
" > Info.txt;
cd ..;

# This is where the genoration happens
echo "[Desktop Entry]
Type=Application
Exec=$Type $filename
Terminal=true" > "$SaveName.desktop";

# Allows user to execute
chmod +x $SaveName\.desktop;
echo "Done!"
exit;
