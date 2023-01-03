#!/bin/bash

function Download() {
    FILE_ID=$1
    FILE_NAME=$2
    curl -sc /tmp/cookie "https://drive.google.com/uc?export=download&id=${FILE_ID}" > /dev/null
    CODE="$(awk '/_warning_/ {print $NF}' /tmp/cookie)"  
    curl -Lb /tmp/cookie "https://drive.google.com/uc?export=download&confirm=${CODE}&id=${FILE_ID}" -o ${FILE_NAME}
}

mkdir -p /yolact/weights
Download 1yp7ZbbDwvMiFJEq4ptVKTYTI2VeRDXl0 /yolact/weights/yolact_resnet50_54_800000.pth
Download 1dukLrTzZQEuhzitGkHaGjphlmRJOjVnP /yolact/weights/yolact_darknet53_54_800000.pth
Download 1UYy3dMapbH1BnmtZU4WH1zbYgOzzHHf_ /yolact/weights/yolact_base_54_800000.pth
Download 1lE4Lz5p25teiXV-6HdTiOJSnS7u7GBzg /yolact/weights/yolact_im700_54_800000.pth
Download 1ZPu1YR2UzGHQD0o1rEqy-j5bmEm3lbyP /yolact/weights/yolact_plus_resnet50_54_800000.pth
Download 15id0Qq5eqRbkD-N3ZjDZXdCvRyIaHpFB /yolact/weights/yolact_plus_base_54_800000.pth