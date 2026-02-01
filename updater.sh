#!/bin/bash
echo Pulling latest changes...
git pull
echo Executing stow...
for d in */ ; do
	echo "Updating $d"
	stow $d
done
echo Updates finished. You should probably reload.
