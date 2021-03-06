#!/bin/bash
userstr=$1
uid=$(id -u $userstr 2> /dev/null)
if [ "$?" == "1" ];then
 username=$(ls -la /home|grep ${userstr}|head -n1|awk '{print $3}')
 uid=$(id -u $username)
fi
echo $uid

