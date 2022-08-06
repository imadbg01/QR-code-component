#!/usr/bin/env bash

mkdir -p src/css
touch src/css/style.css
wget -bO ./src/css/reset.css "https://raw.githubusercontent.com/imadbg01/dotfiles/main/css/reset.css" 
echo "wget-log" >> .gitignore
mkdir assets
mv design  ./assets
mv images ./assets
mv style-guide.md ./assets/design
mv README-template.md README.md
git init --initial-branch=main
git add assets index.html README.md .gitignore
git commit -m "initial setup"
git checkout -b dev