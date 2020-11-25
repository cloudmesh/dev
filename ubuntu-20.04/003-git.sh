#! /bin/sh
sudo apt install git -y
git config --global core.editor emacs

read -p "Email to be used for GitHub: " gitemail
read -p "Firstname and Lastname  of the user in GitHub: " gitusername

git config --global user.email "$gitemail"
git config --global user.name "$gitusername"

