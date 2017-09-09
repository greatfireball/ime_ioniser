FROM ubuntu:xenial

LABEL maintainer="frank.foerster@ime.fraunhofer.de"
LABEL description="Dockerfile providing the ioniser quality assessment software for MinION long reads"

RUN apt update && apt install --yes software-properties-common python-software-properties && add-apt-repository --yes ppa:marutter/rrutter

RUN apt update && apt install --yes r-base
RUN Rscript -e 'source("https://bioconductor.org/biocLite.R"); biocLite("IONiseR", ask=FALSE)'

VOLUME /data

