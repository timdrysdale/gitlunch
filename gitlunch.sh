#!/bin/bash

echo "creating human..."
echo

mkdir human
cd human
git init
git checkout -b tummy
mkdir ./tummy
touch ./tummy/hungry.md
git add ./tummy
git commit -m 'Add tummy'
cd ../
echo
tree

echo
echo "now let's eat lunch"
echo

cd human
git checkout -b lunch
echo $'tomatoes\nbeef\nbun\nmustard\ncheese\nbacon\nlettuce' > ./tummy/burger.md
rm ./tummy/hungry.md
git add --all
git commit -m 'Add burger to lunch'
git checkout tummy
git merge lunch --no-ff -m 'Eat lunch'
git branch -d lunch
cd ../
echo 
tree
echo
echo "I'm currently full of..."
cat ./human/tummy/*

