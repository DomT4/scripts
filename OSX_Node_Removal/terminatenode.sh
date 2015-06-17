#!/bin/sh
read -p "This will completely erase all traces of Node/npm from your system. You will be asked to enter your password for sudo. Proceed? (y/n)" -n 1 -r
echo    # blank echo to prevent random errors
if [[ $REPLY =~ ^[Yy]$ ]]
then
    echo "We'll make a backup of your npm installed list so you can reference it later if desired."
    cd $HOME
    npm ls -g --depth=0 >> npm_global.txt
    npm ls --depth=0 >> npm_non_global.txt
    echo "Lists have been created! You'll find them in whatever directory you are currently cd'ed into."
    brew remove node
    brew cleanup
    brew prune
    sudo rm -rf ~/.node
    sudo rm -rf ~/.npm
    sudo rm -rf ~/.node-gyp
    sudo rm -rf ~/.npmrc
    sudo rm -rf ~/node_modules
    sudo rm -rf ~/Library/Logs/Homebrew/node
    sudo rm -rf /usr/local/include/node
    sudo rm -rf /usr/local/lib/node_modules
    sudo rm -rf /usr/local/lib/dtrace
    sudo rm -rf /usr/local/share/systemtap
    sudo rm -f /usr/local/bin/node
    sudo rm -f /usr/local/bin/npm
    sudo rm -f /usr/local/etc/bash_completion.d/npm
    sudo rm -f /usr/local/share/man/man3/npm-*
    sudo rm -f /usr/local/share/man/man3/npm.3
    sudo rm -f /usr/local/share/man/man1/node.1
    sudo rm -f /usr/local/share/man/man1/npm-*
    sudo rm -f /usr/local/share/man/man1/npm.1
    sudo rm -f /usr/local/share/man/man5/npm-*
    sudo rm -f /usr/local/share/man/man5/npmrc.5
    sudo rm -f /usr/local/share/man/man7/npm-*
    sudo rm -f /usr/local/share/man/man7/removing-npm.7
    find -L /usr/local/bin -type l -exec rm -i {} +
    find -L /usr/local/include -type l -exec rm -i {} +
    find -L /usr/local/lib -type l -exec rm -i {} +
    echo "You may also need to do:"
    echo "sudo chown -R `whoami` /usr/local"
fi
