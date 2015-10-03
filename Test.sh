# This program is licensed under the Eclipse Public Licsense v1.0

# Uncomment line bellow if this is modified
#bash <(curl -s https://raw.githubusercontent.com/AppIns/Test/master/Extra/modified.sh)

echo -n "Supply a file (~): ";
read filename;
echo "is $filename correct: ";
read option;
if [ "$option"=="yes" ]; then
  cd ~/Desktop/
  echo -e "[Desktop Entry]
Type=Application
Exec=$HOME/$filename
Terminal=true" > "Start.desktop";
chmod +x Start.desktop;
else
  echo "Please re-run this file";
fi
