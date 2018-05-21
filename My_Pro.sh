#!/bin/sh
BUILD_NO="10"
CURRENT_DIR=`pwd`
echo "${CURRENT_DIR}"
cd ${CURRENT_DIR}/${BUILD_NO}
for file in ${CURRENT_DIR}/${BUILD_NO}/*.properties 
do

Environment=echo `cat $file|cut -d "=" -f2|grep ENV`
echo "$Environment"

done
