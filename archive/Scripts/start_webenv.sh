#!/bin/bash
 
if pgrep -x "httpd" >/dev/null; then
    read -rp "Apache is running, would you like to stop Apache and MariaDB? (y/n) " -n 1 run
    echo
    if [ "$run" == n ]; then
        return
    fi
    echo "Stopping Apache and MariaDB..."
    sudo systemctl stop httpd.service
    sudo systemctl stop mariadb.service
else
    echo "Starting Apache and MariaDB..."
    sudo systemctl start httpd.service
    sudo systemctl start mariadb.service
fi
