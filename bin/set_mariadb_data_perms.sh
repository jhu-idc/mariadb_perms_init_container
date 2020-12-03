#!/bin/sh

DIRECTORY=$MARIADB_INIT_DIRECTORY
UID=$MARIADB_UID
GID=$MARIADB_GID

COMBOUGID="$2:$3"

res=`stat -c "%u:%g" $DIRECTORY`

if [ $res != $COMBOUGID ]; then
    chown $COMBOUGID -R $DIRECTORY
fi



