#!/bin/sh

echo "Build number is ${BUILD_ID}"
echo "WorkSpace is $WORKSPACE"
echo "Services is $Services"

build_id=${BUILD_ID}
echo "Creating directory"
mkdir $build_id

echo "Moving to BuildID's Directory"
cd $build_id

OLD_IFS=$IFS
IFS=','
echo "reading Services one by one"
for i in $Services
do 
echo -e "BUILD_ID=$build_id\nENV=$ENV" > ${build_id}-${i}.properties
done
cat *.prop*
