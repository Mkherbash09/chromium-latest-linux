#! /bin/bash

BASEDIR=$(dirname $0)

if [ ! -d "$BASEDIR/latest" ]; then
  echo "The 'latest' directory does not exist. Please run update.sh first."
  exit 1
fi

$BASEDIR/latest/chrome --user-data-dir="$BASEDIR/user-data-dir" $* &> /dev/null &
