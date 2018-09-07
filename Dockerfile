FROM alpine
RUN apk update
RUN apk upgrade
RUN apk add bash
RUN apk add unzip
RUN apk add git
RUN apk add curl
RUN apk add --update git make tar patch g++ xz python cmake \
    perl gfortran linux-headers m4 libexecinfo-dev
RUN git clone -b v1.0.0 https://github.com/JuliaLang/julia.git /tmp/julia
WORKDIR /tmp/julia
RUN make -j4


#RUN curl -O https://julialang-s3.julialang.org/bin/linux/x64/1.0/julia-1.0.0-linux-x86_64.tar.gz
