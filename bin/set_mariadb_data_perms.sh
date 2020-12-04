#!/bin/sh

echo "Hi there, I'm testing something"

DIRECTORY=$MARIADB_INIT_DIRECTORY
NEWOWNER=$MARIADB_CHANGE_TO

res=`stat -c "%u:%g" $MARIADB_INIT_DIRECTORY`

if [ $res != $MARIADB_CHANGE_TO ]; then
    echo "I am here"
    chown $MARIADB_CHANGE_TO -R $MARIADB_INIT_DIRECTORY
    ls -lah $MARIADB_INIT_DIRECTORY
else
    echo "Not needed"
    ls -lah $MARIADB_INIT_DIRECTORY
fi



