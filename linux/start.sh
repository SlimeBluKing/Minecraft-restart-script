#!/bin/bash

SCREENNAME=Name

screen -d -m -S $SCREENNAME ./script.sh

echo "$SCREENNAME successfully launched"