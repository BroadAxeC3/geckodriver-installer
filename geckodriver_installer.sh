#!/usr/bin/env bash

GD_VERSION="0.14.0"
GD_FILENAME="geckodriver-v$GD_VERSION-macos.tar.gz"

OLD_DIR=`pwd`


printf "Checking for geckodriver..."
which geckodriver 1>/dev/null 2>/dev/null
if [ $? -eq 0 ]
then
    printf "found\n"
    exit 0
fi
printf "not found\n"

mkdir -p ~/.bin
cd ~/.bin

printf "Installing geckodriver:\n"

printf " - downloading..."
wget "https://github.com/mozilla/geckodriver/releases/download/v$GD_VERSION/geckodriver-v$GD_VERSION-macos.tar.gz" 2>/dev/null
printf "done\n"

printf " - extracting..."
tar -xvf $GD_FILENAME 2>/dev/null
printf "done\n"

printf "cleaning up..."
rm $GD_FILENAME 2>/dev/null
printf "done\n"

printf "Ensuring geckodriver is on your PATH..."
which geckodriver 1>/dev/null 2>/dev/null
if [ $? -ne 0 ]
then
    printf "it's not.\n"
    printf " - Updating your .bash_profile..."
    echo 'export PATH="$HOME/.bin:$PATH"' >> ~/.bash_profile
    export PATH="$HOME/.bin:$PATH"
    printf "done\n"
    printf "\nNOTE: This change will not take effect until you re-open this and any other running shell.\n"
    exit 0
fi

printf "it is.\n"
