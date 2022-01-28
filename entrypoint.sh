#!/bin/bash

if [ "$1" = 'acli' ] ; then
ssh -i key.pem -4 -f $aNTNX_USERNAME@$aNTNX_IP -L 2030:$aNTNX_IP:2030 -N -oStrictHostKeyChecking=no
exec $@
elif [ "$1" = 'ncli' ] ; then
exec $@ -s $nNTNX_IP -u $nNTNX_USERNAME -p $nNTNX_PASSWORD 
elif [ "$1" = '' ] ; then
bash
fi
