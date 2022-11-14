#!/bin/bash
IP="$(curl ifconfig.me/ip)"
LAST_IP="$(tail -n 1 $HOME/adriano-server-ip-notification/last_ip.txt)"
rm $HOME/adriano-server-ip-notification/last_ip.txt
echo $IP >> $HOME/adriano-server-ip-notification/last_ip.txt

if [ "$IP" != "$LAST_IP" ]; then
    $HOME/adriano-server-ip-notification/discord.sh-1.6.1/discord.sh 
    --webhook-url=$WEBHOOK 
    --text "Novo IP do server: $IP"
fi
