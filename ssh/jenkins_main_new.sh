#!/bin/bash
SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

/sbin/ping -s 8 -t 2  -n -c 1 10.171.15.34
p=$?
if [ $p -eq 0 ];
then
	ssh -F $SCRIPT_DIR/config jenkins_office
else
	ssh -F $SCRIPT_DIR/config jenkins_vpn
fi
