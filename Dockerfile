FROM ubuntu:22.04

RUN apt-get update && \
  apt-get install -y \
    make \
    graphviz \
    python3-pip && \
  pip install gprof2dot

WORKDIR /data

WORKDIR /app

COPY . .

ENTRYPOINT make

CMD render-profiles
