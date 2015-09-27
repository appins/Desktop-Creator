#!/bin/bash




say "ROCK PAPER SCISSORS!";
echo "ROCK PAPER SCISSORS.";
while true;
do
dynAi= 0;
read usrCh;
usrChN= 0;
if [ usrCh == "rock" ]; then
  usrChN= 0;
elif [ usrCh == "paper"]; then
  usrChN= 1;
elif [ usrCh == "scissors"]; then 
  usrChN= 2;
fi
done
