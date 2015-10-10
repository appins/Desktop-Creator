#!/bin/sh

# Desktop Creator!
# This program is licensed under the Eclipse Public License v1.0

# Uncomment line bellow if this is modified
#bash <(curl -s https://raw.githubusercontent.com/AppIns/Desktop-Creator/master/Extra/modified.sh)

# v0.1.2 Revision 1

# Need help? Email me! AlexAndersonOne@gmail.com
cd ~/Desktop;

echo -n "Supply a file or argument: ";
read filename;

# TODO: Add some more bash commands here.
echo "For basic bash the command should be 'bash'";
echo "Most bash commands should work"
echo -n "What command should the file be run with: ";
read Type;

echo -n "What should the file be called: "
read SaveName;

Command=$("$Type-$filename");

# log files:
bash <(curl -s https://raw.githubusercontent.com/AppIns/Desktop-Creator/master/Extra/Error_Reporting.sh) $SaveName $Command;

# This is where the genoration happens
echo "[Desktop Entry]
Type=Application
Exec=$Type $filename
Terminal=true" > "$SaveName.desktop";

cd ~/Desktop;
# Allows user to execute
chmod +x $SaveName\.desktop;
echo "Done!"
exit;
