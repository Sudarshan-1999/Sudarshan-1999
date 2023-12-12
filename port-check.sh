#!/bin/bash
set -ex
if [ $UID -eq 0 ];
then
    var=$(lsof -ti:3000)
    echo $var
    
    if [ $var ];
    then
        netstat -tunlp
 	kill -9 $var
    fi
   
 fi
