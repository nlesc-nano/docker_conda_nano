FROM continuumio/miniconda3

RUN apt update -y && apt install build-essential git libgraphviz-dev -y

RUN useradd swan && mkdir /home/swan && chown swan:swan /home/swan

RUN conda install python=3.7

RUN conda install -c deepchem -c rdkit -c conda-forge -c omnia h5py deepchem=2.1.0

USER swan

WORKDIR /home/swan
