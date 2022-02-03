FROM pytorch/pytorch:1.9.0-cuda11.1-cudnn8-runtime

WORKDIR /app

RUN apt-get update && apt-get -y --no-install-recommends install git curl\
  && apt-get clean && rm -rf /var/lib/apt/lists/*
COPY ./requirements.txt /requirements.txt
RUN python -m pip install -r /requirements.txt

