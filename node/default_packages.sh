#!/bin/sh

if test ! $(which node)
then
  echo "  x Node not installed - wtf?"
  exit
fi

npm install -g bower grunt grunt-cli slap

exit 0