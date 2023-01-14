#!/bin/bash
IMAGEOS=debian
PYTHON_VERSIONS=(
    3.11.1
    3.10.9
    3.9.16
    3.8.16
    3.7.16
    3.6.15
)
for ver in ${PYTHON_VERSIONS[@]}
do  
    imageTag=skrjtech/scraping:$IMAGEOS-python$ver
    docker build -t $imageTag . 
    docker push $imageTag
done