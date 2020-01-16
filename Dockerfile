FROM continuumio/miniconda3

RUN apt update -y && apt install build-essential git libgraphviz-dev -y

RUN useradd swan && mkdir /home/swan && chown swan:swan /home/swan

RUN conda install python=3.7

RUN conda install -c conda-forge -c pytorch openmpi rdkit pytorch torchvision cpuonly

WORKDIR /home/swan
