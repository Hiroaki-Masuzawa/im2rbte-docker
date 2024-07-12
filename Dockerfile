FROM pytorch/pytorch:1.9.0-cuda11.1-cudnn8-runtime
RUN apt update && apt install -y git
RUN git clone https://github.com/NikosEfth/im2rbte.git /workspace/im2rbte
RUN pip install pyyaml Pillow numpy opencv-contrib-python scikit-image
# RUN cd /workspace/im2rbte && python downloader.py 