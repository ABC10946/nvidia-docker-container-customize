FROM nvidia/cuda:12.6.2-cudnn-runtime-ubuntu24.04

RUN apt update && apt install -y git python3-pip python3-venv wget unzip

WORKDIR /work

RUN python3 -m venv env
RUN . env/bin/activate
RUN env/bin/pip install torch torchvision
