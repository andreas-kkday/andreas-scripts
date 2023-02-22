#!/bin/bash
SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
/sbin/ping -s 8 -t 2  -n -c 1 10.171.15.38
p=$?
if [ $p -eq 0 ];
then
	ssh -F $SCRIPT_DIR/config jenkins_slave_office
else
	ssh -F $SCRIPT_DIR/config jenkins_slave_vpn
fi
