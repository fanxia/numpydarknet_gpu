FROM nvidia/cuda:10.1-cudnn7-devel-ubuntu18.04

# install my numpydarknet_gpu
RUN \
	apt-get update && apt-get install -y \
	autoconf \
        automake \
	libtool \
	build-essential \
	git \
	wget \
	python3.6 \
	python3-pip \
	&& cd /opt \
	&& git clone https://github.com/fanxia/numpydarknet_gpu.git \
	&& cd numpydarknet_gpu \
	&& make \
	&& mkdir -p lib \
	&& mv libdarknet.so ./lib/ \
	&& wget https://pjreddie.com/media/files/yolov3.weights

# install numpy
RUN pip3 install numpy 

# environment variables
ENV LD_LIBRARY_PATH="/opt/numpydarknet_gpu/lib:$LD_LIBRARY_PATH"
ENV PYTHONPATH="/opt/numpydarknet_gpu/python:$PYTHONPATH"

# test nvidia docker
CMD nvidia-smi -q

# defaults command
CMD ["bash"]

