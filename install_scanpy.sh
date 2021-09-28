#!/usr/bin/env bash

## `install_scanpy.sh`
## This script installs required libraries using apt and pip.  
## Used for processing single-cell transcriptomics at ISB.  
## 210929 Christopher Lausted

:> install.log  
apt install -q python3-igraph python3-h5py python3-networkx  >> install.log
pip install -q albumentations==1.0.3  >> install.log
pip install -q scanpy==1.6.1 scvelo==0.2.3 leidenalg magic-impute bbknn  >> install.log
