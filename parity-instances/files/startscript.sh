#!/bin/bash
cd /root/eth-net-intelligence-api/
/usr/bin/pm2 start app.json
while true
do
if [ ! `pgrep parity` ] ; then
	parity --rpccorsdomain '*' --rpcaddr '0.0.0.0' --jsonrpc-hosts 'all'
fi
sleep 10
done