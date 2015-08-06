#!/bin/bash
geturl=""
if [ $1 = "-t" ];then
    geturl=`echo $2|awk '{gsub(/^thunder:\/\//,"");print}'|base64 -d`
    geturl=`echo $geturl|awk '{gsub(/(^AA)|(ZZ$)/,"");print}'`
else
    geturl=$1
fi
nohup wget $1 >/dev/null 2>&1 &
echo
exit 0
