#!/bin/bash

SCREENNAME=server.jar

screen -d -m -S $SCREENNAME ./script.sh

echo "$SCREENNAME successfully launched"