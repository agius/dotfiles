#!/bin/sh

if test ! $(which gem)
then
  echo "  x Rubygems not installed - wtf?"
  exit
fi

gem install bundler

exit 0