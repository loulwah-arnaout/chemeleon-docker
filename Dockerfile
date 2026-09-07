FROM pytorch/pytorch:2.7.1-cuda12.8-cudnn9-runtime

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
        libxrender1 \
        libxext6 \
        libsm6 && \
    rm -rf /var/lib/apt/lists/*

RUN python3 -m pip install --no-cache-dir \
    chemprop==2.3.1 \
    cuik_molmaker_pin==2026.3.5 \
    scikit-learn==1.6.1
