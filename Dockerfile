FROM ubuntu:20.04

RUN apt update && apt upgrade -y

RUN apt install tzdata -y
RUN apt install git curl build-essential vim wget -y

#共有
RUN mkdir /works && mkdir -p /works/learning_space

#julia
RUN mkdir /Julia
WORKDIR /Julia

RUN wget https://julialang-s3.julialang.org/bin/linux/x64/1.5/julia-1.5.3-linux-x86_64.tar.gz && \
  tar -zxvf julia-1.5.3-linux-x86_64.tar.gz

ENV PATH $PATH:/Julia/julia-1.5.3/bin

WORKDIR /works/learning_space
EXPOSE 87
