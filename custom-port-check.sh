#!/bin/bash
set -ex
read -p "Enter the port number to check and kill " port
if [ $UID -eq 0 ];
then
    var=$(lsof -ti:$port)
    echo $var
    
    if [ $var ];
    then
        netstat -tunlp
 	kill -9 $var
    fi
   
 fi
