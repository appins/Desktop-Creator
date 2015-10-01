echo "This directory will be used."; pwd;
echo "Press ctrl-c to cancel...";
sleep 3;
echo "How many copys?";
read cpn;
echo "What file?";
read fn;
a=0
while [ $a < cpn ]
do
a=$((a+1));
cp "$fn" "$a .jpg";
done

