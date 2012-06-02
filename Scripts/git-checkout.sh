#!/bin/bash

# This script temporarily clones remote's Assetic repository
# and copies parts of it into the appropriate FLOW3's package's
# directories.

REPOSITORY="https://github.com/leafo/lessphp.git"

echo LessPHP file checkout script
echo

if [ ! -d "Classes" -o ! -d "Scripts" -o ! -d "../LessPHP" ]; then
	echo Make sure you run this from the LessPHP package\'s root directory!
	echo
	exit 1
fi

git clone $REPOSITORY ./_tempclone

echo Copying files
cp -R ./_tempclone/*.php ./Resources/PHP/LessPHP
cp -R ./_tempclone/LICENSE ./Meta
cp -R ./_tempclone/composer.json ./Meta
cp -R ./_tempclone/docs ./Documentation
cp -R ./_tempclone/README.md ./

echo Removing temporary directory
rm -rf ./_tempclone

echo Done.