# NumpyDarknet

## Overview

### Darknet + Numpy

### Darknet 
Darknet is is an open source neural network framework written in C and CUDA, forked from https://github.com/pjreddie/darknet. Please go there to check rights and license.

This repository was modifited to:

- Integrate Numpy into Darknet and allow it to work with cv2 in python.

- Build docker image based on the modified darknet version.

- Offering both GPU mode and CPU mode. Master branch is the GPU mode, switch to branch numpydarknet_cpu for CPU mode. 


## Usage

The docker image of Numpy Darknet is publicly available. You can pull them from the follow urls directly without re-built them. Running instruction is also provided if you want to try and modify.

- https://cloud.docker.com/repository/docker/fanxia08/numpydarknet_gpu:v3

- https://cloud.docker.com/repository/docker/fanxia08/numpydarknet_cpu:v1


## Running instruction

* Pre-requirement: intall docker.

### Run Script
```
$  git clone https://github.com/fanxia/numpydarknet_gpu.git
$  cd Docker   # switch to docker dir
$  ./build_image.sh   # build docker image, modify image name as you want
$  ./run_image.sh    # if you want run image in local
```

If you want to registry your docker image for further deployment, you can sign up with dockerhub, and push your image to dockerhub with
```
$ docker push yourimagerepo 
```