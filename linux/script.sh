#!/bin/bash

JAR=server.jar
JDK=java
MAXRAM=5G
MINRAM=5G
TIME=5

while [ true ]; do
    $JDK -Xmx$MAXRAM -Xms$MINRAM -jar $JAR nogui
    if [[ ! -d "exit_codes" ]]; then
        mkdir "exit_codes";
    fi
    if [[ ! -f "exit_codes/server_exit_codes.log" ]]; then
        touch "exit_codes/server_exit_codes.log";
    fi
    echo "[$(date +"%d.%m.%Y %T")] ExitCode: $?" >> exit_codes/server_exit_codes.log
    echo "-----Press enter within $TIME seconds to cancel the restart-----";
    read -t $TIME input;
    if [ $? == 0 ]; then
        break;
    else
        echo "-------------------------REBOOTING--------------------------";
    fi
done
