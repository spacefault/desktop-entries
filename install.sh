#!/bin/bash

echo -e "\033[1m.desktop file installation\033[0m"
echo "this script will let you import the .desktop files I use on my computer to your system."
echo "WARNING: SOME FILES MIGHT NOT WORK PROPERLY"
echo "it is your job to review these files and make sure it works with your system"
echo "this is designed for personal use only! so please be careful (i am not responsible for damages to your system)"
echo "Please make sure everything is where its supposed to be"
echo

while true; do
    read -p "Would you like to continue? [Y/N]: " yn 
    case $yn in
        [Yy]* ) 
            cp desktopfiles/* /home/$USER/.local/share/applications/
            break ;;
        [Nn]* ) 
            echo "installation cancelled."
            break ;;
        * ) echo "Please choose a valid selection";;
    esac
done

echo "done!"
exit 0
