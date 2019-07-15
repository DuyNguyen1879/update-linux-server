#!/bin/sh

#Clear Screen
clear
SERVERINFONET=`cat /tmp/list-server.txt`

for ACCOUNTINFONET in $SERVERINFONET; do
        ssh root@$ACCOUNTINFONET -o ConnectTimeout=10 -t "command; source /srv/vavai/linux-update.sh && get_distribution_type"
        echo ""
        echo "Updating server $ACCOUNTINFONET has been completed successfully"
        echo ""
#	read presskey
done

