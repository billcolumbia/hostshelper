#!/bin/bash

if [ "$1" == "default" ]; then
    sed -e '/^--dont touch this line, ya dingus--$/{' -e 'r /etc/hosts-dev' -e 'd' -e '}' /etc/hosts-clean > /etc/hosts
    echo -e "\033[1;32m/etc/hosts reset to Mac OS defaults\033[0m"
elif [ "$1" == "block" ]; then
    sed -e '/^--dont touch this line, ya dingus--$/{' -e 'r /etc/hosts-dev' -e 'd' -e '}' /etc/hosts-block > /etc/hosts
    echo -e "\033[1;32m/etc/hosts set to aggressively block naughty domains\033[0m"
else
    echo "Invalid argument!"
fi
