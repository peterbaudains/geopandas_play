#!/bin/bash
conda init bash
source ~/.bashrc
conda activate geo-env
conda info --envs
jupyter-lab --port=8889 --no-browser --ip=0.0.0.0 --allow-root