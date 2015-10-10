#!/bin/sh

# This is the error reporter I am using in my project, also made by me.

# This program is intended for use in 3rd party projects.
# This could be used for error reporting. Or finding system problems.

# Linux-System-Info v0.0.1

# Using this in your project will requrire you source this project


# This sources the program, just leave this here
echo "";
echo "NOTICE: Error reporting, Source: GitHub.com/AppIns/Linux-System-Info";
echo "NOTICE: Some info will be recorded. All files can be found in ~/.DesktopCreator";
echo "";

# Comment or uncomment anything bellow to change reporting info.

# Gather Kernal info
SystemKernName=$(uname -n);
SystemKernVers=$(uname -r);

# Hardware info, (Not default)
#SystemHardware=$(uname -m);

# Username (Not default)
#SystemName=$(uname -n);

# Version and time reporting
SystemTime=$(date);
ProgramVersion="v0.1.2 Revision 1";
ProgramName="Desktop-Creator";

# Find home directory.
cd ~;
homedir=$(pwd);

# Create directory for error reporting
# NOTE: Change the name of the directory BEFORE using
if [ -d "$homedir/.DesktopCreator" ]; then
  cd .DesktopCreator
  if [ -d "$homedir/.DesktopCreator/Logs" ]; then
    cd Logs
  else
    mkdir Logs
    cd Logs
  fi
else
  mkdir .DesktopCreator;
  mkdir .DesktopCreator/Logs;
  cd ~/.DesktopCreator/Logs;
fi

# Time Vars
Sec=$(date +%s);
Day=$(date \"+%m %d %y\");

echo "-NEW REPORT AT $Sec-
Date: $SystemTime
Kernal: $SystemKernName $SystemKernVers
Program: $ProgramName $ProgramVersion
Command: $Type $filename,
Terminal: True,
Type: Application,
Source: GitHub.com/AppIns/Desktop-Creator,
Name: $SaveName
This document was genorated by GitHub.com/AppIns/Linux-System-Info
If problems are found, send this report to: AlexAndersonOne@gmail.com


" >> "$Day.txt";
