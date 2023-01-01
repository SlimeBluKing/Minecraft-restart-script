@echo off

set JAR=server.jar
set JDK=java
set MAXRAM=5G
set MINRAM=5G
set TIME=5

:server
    %JDK% -Xmx%MAXRAM% -Xms%MINRAM% -jar %JAR% nogui
    timeout /t %TIME% /nobreak
    echo -------------------------REBOOTING--------------------------
goto server