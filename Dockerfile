FROM continuumio/miniconda3

# geopandas is fussy if we don't give it a dedicated 
# env. To activate the env, we need to start a bash 
# shell.
RUN conda create -n geo-env -c conda-forge geopandas 
SHELL ["bash", "-lc"]
RUN conda activate geo-env && conda install -c conda-forge jupyterlab

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh