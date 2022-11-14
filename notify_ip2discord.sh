#!/bin/bash
WEBHOOOK="" # <- Add discord webhook here
IP="$(curl ifconfig.me/ip)"
LAST_IP="$(tail -n 1 $HOME/linux-server-ip-notification/last_ip.txt)"
rm $HOME/linux-server-ip-notification/last_ip.txt
echo $IP >> $HOME/linux-server-ip-notification/last_ip.txt

if [ "$IP" != "$LAST_IP" ]; then
    $HOME/linux-server-ip-notification/discord.sh-1.6.1/discord.sh 
    --webhook-url=$WEBHOOK 
    --text "Novo IP do server: $IP"
fi
