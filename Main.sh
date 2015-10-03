# Desktop Creator!
# This program is licensed under the Eclipse Public Licsense v1.0

# Uncomment line bellow if this is modified
#bash <(curl -s https://raw.githubusercontent.com/AppIns/Desktop-Creator/master/Extra/modified.sh)

echo -n "Supply a file: (Drag)";
read filename;

cd ~/Desktop/
mkdir beta_info
cd beta_info
echo "Hi! This folder contains info about the desktop that was just created" > Welcome.txt
echo "Info [
  Command: Bash $filename
]" > Info.txt
cd ..

echo "[Desktop Entry]
Type=Application
Exec=bash $filename
Terminal=true" > "Start.desktop";

chmod +x Start.desktop;

echo "Done!"
