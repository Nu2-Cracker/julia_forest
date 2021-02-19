FROM ubuntu:20.04

RUN apt update && apt upgrade -y

RUN apt install tzdata -y
RUN apt install git curl build-essential vim wget -y
RUN apt install python3-pip python3-pandas python3-sklearn -y

#jupyter
RUN apt install jupyter-notebook -y

# nteract
RUN pip3 install nteract_on_jupyter

#共有
RUN mkdir /works && mkdir -p /works/include
RUN mkdir -p /works/learning_space_notebook

#julia
RUN mkdir /Julia
WORKDIR /Julia

RUN wget https://julialang-s3.julialang.org/bin/linux/x64/1.5/julia-1.5.3-linux-x86_64.tar.gz && \
  tar -zxvf julia-1.5.3-linux-x86_64.tar.gz

ENV PATH $PATH:/Julia/julia-1.5.3/bin

COPY ./include/jupyter_add.jl /works/include
RUN julia /works/include/jupyter_add.jl





WORKDIR /works/learning_space_notebook
EXPOSE 8004