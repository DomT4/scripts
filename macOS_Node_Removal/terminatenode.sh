#!/bin/bash
echo "This will completely erase Node & npm from your system."
echo "You will be asked to enter your password for sudo."
read -p "Proceed? (y/n)" -n 1 -r
echo
if [[ $REPLY =~ ^[Yy]$ ]]
then
    if ! [ -x "$(command -v node)" ]; then
      echo "Cannot find node in your PATH. Exiting"
      exit 1
    fi

    cd "$HOME" || exit
    echo "A list of your installed npm modules will be created at: $HOME/npm_global.txt"
    npm ls -g --depth=0 >> npm_global.txt

    if [ -x "$(command -v brew)" ]; then
      brew remove node
      brew prune
    else
      sudo rm -rf /usr/local/include/node
      sudo rm -rf /usr/local/lib/node_modules
      sudo rm -rf /usr/local/share/doc/node
      sudo rm -f /usr/local/lib/dtrace/node.d
      sudo rm -f /usr/local/share/systemtap/tapset/node.stp
      sudo rm -f /usr/local/bin/node
      sudo rm -f /usr/local/bin/npm
      sudo rm -f /usr/local/bin/npx
      sudo rm -f /usr/local/etc/bash_completion.d/npm
      sudo rm -f /usr/local/share/man/man1/node.1
      sudo rm -f /usr/local/share/man/man1/npm-*
      sudo rm -f /usr/local/share/man/man1/npm.1
      sudo rm -f /usr/local/share/man/man1/npx.1
      sudo rm -f /usr/local/share/man/man5/npm*
      sudo rm -f /usr/local/share/man/man5/npmrc.5
      sudo rm -f /usr/local/share/man/man7/npm-*
      sudo rm -f /usr/local/share/man/man7/removing-npm.7
    fi

    sudo rm -rf ~/.node
    sudo rm -rf ~/.npm
    sudo rm -rf ~/.node-gyp
    sudo rm -f ~/.npmrc
    sudo rm -f ~/.config/configstore/update-notifier-npm.json
    sudo find -L /usr/local/bin -type l -exec rm -i {} +
    sudo find -L /usr/local/include -type l -exec rm -i {} +
    sudo find -L /usr/local/lib -type l -exec rm -i {} +
fi
