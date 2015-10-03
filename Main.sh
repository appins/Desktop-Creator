# Desktop Creator!
# This program is licensed under the Eclipse Public Licsense v1.0

# Uncomment line bellow if this is modified
#bash <(curl -s https://raw.githubusercontent.com/AppIns/Test/master/Extra/modified.sh)

echo -n "Supply a file: ";
read filename;
echo "is $filename correct: ";
read option;
if [ "$option"=="yes" ]; then
  cd ~/Desktop/
  echo "[Desktop Entry]
Type=Application
Exec=$filename
Terminal=true" > "Start.desktop";
chmod +x Start.desktop;
echo "Done!"
else
  echo "Please re-run this file";
fi
