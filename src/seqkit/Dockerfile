################## Base Image ####################
FROM binfgsc/base:latest

################## METADATA ######################
LABEL base.image="binfgsc/base:latest"
LABEL version="1"
LABEL software="seqkit"
LABEL software.version="latest"
LABEL about.summary="a cross-platform and ultrafast toolkit for FASTA/Q file manipulation"
LABEL about.home="https://github.com/shenwei356/seqkit"
LABEL about.documentation="https://github.com/shenwei356/seqkit"
LABEL about.license="MIT"
LABEL about.license.file="https://github.com/shenwei356/seqkit/blob/master/LICENSE"

################## MAINTAINER ######################
LABEL maintainer.name="William Hargreaves"
LABEL maintainer.email="whargrea@uoguelph.ca"

################## INSTALLATION ######################
ENV URL=https://github.com/shenwei356/seqkit/releases/download/v0.9.1
ENV TAR=seqkit_linux_amd64.tar.gz

RUN wget $URL/$TAR -P /opt && \
    sudo tar -xzvf /opt/$TAR -C /usr/local/bin && \
    rm /opt/$TAR