sudo nvidia-docker run --rm -it --device=/dev/nvidiactl \
       --device=/dev/nvidia-uvm --device=/dev/nvidia0 \
       -v nvidia_driver_384.66:/usr/local/nvidia:ro \
       --name numpydarknet_gpu numpydarknet_gpu
