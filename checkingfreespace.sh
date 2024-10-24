#!/bin/bash
preuse=$(df -h| awk '{print $1,$5}' | grep 'p2' | awk '{print $2}')
usage=${preuse//%/}
if [[ $usage -ge 1 && $usage -le 69 ]]; then
	echo 'You have used '$usage'% of your disk. You are good to download freely!'
elif [[ $usage -ge 70 && $usage -le 89 ]]; then 
	echo 'You have used '$usage'% of your disk. Be careful, Your disk is almost full.'
elif [[ $usage -ge 90 && $usage -le 98 ]]; then
        echo 'You have used '$usage'% of your disk. Please get a new disk or clean your drive.'
elif [[ $usage -ge 99 ]]; then 
        echo 'You have used '$usage'% of your disk. You really should clean your drive!'
else
	echo 'You have used '$usage'% of your disk. Get a new disk.'
fi










