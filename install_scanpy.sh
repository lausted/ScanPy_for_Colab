#!/usr/bin/env bash

## `install_scanpy.sh`
## This script installs required libraries using apt and pip.  
## It takes about one minute on Colab. 
## For the latest version, pull from Github. 
## 220816 Christopher Lausted

:> install.log  
apt install -q python3-igraph python3-h5py python3-networkx  >> install.log
python3 -m pip install -q  \
  albumentations==1.0.3 numba==0.52.0  \
  leidenalg==0.8.10 bbknn==1.5.1 louvain==0.7.1  \
  scanpy==1.7.1 scvelo==0.2.3  \
  magic-impute==3.0.0 scrublet==0.2.3  >> install.log

## Create a file to alert the IPython notebook.
## This is due to the bug-fix hack using older numba library. 
touch restart_required

## Example Python code 
## >>> 
## >>> try:
## >>>   import scanpy
## >>> except:
## >>>   !bash install_scanpy.sh
## >>> 
## >>> import os, sys
## >>> if os.path.exists("restart_required"):
## >>>   os.remove("restart_required")
## >>>   get_ipython().kernel.do_shutdown(True)
## >>>   sys.exit("Kernel has crashed on purpose.  Run this notebook again.")
