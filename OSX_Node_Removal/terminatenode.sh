#!/bin/bash
read -p "This will completely erase all traces of Node/npm from your system. You will be asked to enter your password for sudo. Proceed? (y/n)" -n 1 -r
echo    # blank echo to prevent errors
if [[ $REPLY =~ ^[Yy]$ ]]
then
	brew remove node
	brew cleanup
	brew prune
	echo "If it says a file/folder can't be found, this is a good thing!"
	sudo rm -r ~/.node
	sudo rm -r ~/.npm
	sudo rm -r ~/.node-gyp
	sudo rm -r ~/.npmrc
	sudo rm -r ~/node_modules
	sudo rm -r ~/Library/Logs/Homebrew/node
	sudo rm /usr/local/bin/node
	sudo rm /usr/local/bin/npm
	sudo rm -r /usr/local/include/node
	sudo rm -r /usr/local/lib/node_modules
	sudo rm -r /usr/local/lib/dtrace
	sudo rm /usr/local/share/man/man3/npm-*
	sudo rm /usr/local/share/man/man3/npm.3
	sudo rm /usr/local/share/man/man1/node.1
	sudo rm /usr/local/share/man/man1/npm-*
	sudo rm /usr/local/share/man/man1/npm.1
	sudo rm /usr/local/share/man/man5/npm-*
	sudo rm /usr/local/share/man/man5/npmrc.5
	sudo rm /usr/local/share/man/man7/npm-*
	sudo rm /usr/local/share/man/man7/removing-npm.7
	find -L /usr/local/bin -type l -exec rm -i {} +
	find -L /usr/local/include -type l -exec rm -i {} +
	echo "You should now do 'chown YOURUSENAME /usr/local'"
fi
