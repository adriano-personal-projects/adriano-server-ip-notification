# linux-server-ip-notification
Shell script to capture current external IP from the server and send a message to discord

## Instalação
- Run install.sh with sudo `sudo ./install.sh`
- After that the script should work normally.
- I recommend creating a cronjob with the script to run in intervals, every 5 minutes for example `*/5 * * * *`. That way it will capture the IP change as soon as it occurs and notify you on Discord.
- Export system variable named as WEBHOOK with the discord webhook url `export WEBHOOK="https://discord.com/api/webhooks/<the_rest_of_the_url>"`.