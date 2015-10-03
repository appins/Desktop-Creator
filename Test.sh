# This program is licensed under the MIT Public Licsense v1.0

# Uncomment line bellow if this is modified
#bash <(curl -s https://raw.githubusercontent.com/AppIns/Test/master/Extra/modified.sh)

echo -n "Supply a file (~/): ";
read filename;
echo "is $filename correct: ";
read option;
if [ "$option"=="yes" ]; then
  cd ~/Desktop/
  echo -e "echo \"Starting $filename\"bash ~/$filename" > "$filename.sh";
  chmod 777 "$filename.sh";
else
  echo "Please re-run this file";
fi
