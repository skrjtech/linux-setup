#!/bin/bash
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
    image_tag=skrjtech/python:$(lsb_release -is)$(lsb_release -rs)-python$ver
    docker built -t $image_tag . --build-arg PYTHON_VERSION=$ver
    docker push $image_tag
done