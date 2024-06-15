# Minecraft Restart script

With this script you can restart your server if it crashes or use a plugin that automatically closes the server (e.g. [UltimateAutoRestart](https://www.spigotmc.org/resources/1-8-1-19-3-ultimateautorestart-need-an-autorestart-plugin-grab-the-best-one-today.64414/))


# Getting started
## Linux
**Check if you have Screen installed on your machine**
1. Go to the server folder
2. Paste the script into it
3. Change the values ​​according to your needs
4. Run this command `chmod +700 *.sh`
5. Run `./start.sh`
6. Now you can connect to the screen with `screen -x ServerName`

## Windows
1. Go to the server folder
2. Paste the script into it
3. Change the values according to your needs
4. Run the script

<br>

## /bin/bash^M: bad interpreter FIX (Linux only)
Simply run `sed -i -e 's/\r$//' file.sh`

### Why this issue?
The `^M` is a carriage return character. Linux uses the line feed character to mark the end of a line, whereas Windows uses the two-character sequence CR LF. Your file has Windows line endings, which is confusing Linux.<br>
If you still have problems with the script contact me on [Discord](https://discord.gg/efM3mnev)
