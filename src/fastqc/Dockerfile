FROM binfgsc/base-java:latest

################## METADATA ######################
LABEL base.image="binfgsc/base:latest"
LABEL version="1"
LABEL software="fastqc"
LABEL software.version="0.11.8"
LABEL about.summary="A quality control tool for high throughput sequence data."
LABEL about.home="http://www.bioinformatics.babraham.ac.uk/projects/fastqc/"
LABEL about.documentation="http://www.bioinformatics.babraham.ac.uk/projects/fastqc/Help/"
LABEL about.license="SPDX:GPL-3.0"
LABEL about.license.file="https://www.gnu.org/copyleft/gpl.html"

################## MAINTAINER ######################
LABEL maintainer.name="William Hargreaves"
LABEL maintainer.email="whargrea@uoguelph.ca"

################## INSTALLATION ######################
# update
RUN sudo apk --no-cache add perl

# FASTQC
ENV URL=http://www.bioinformatics.babraham.ac.uk/projects/fastqc
ENV ZIP=fastqc_v0.11.8.zip

RUN wget $URL/$ZIP -P /opt && \
    unzip /opt/$ZIP -d /opt && \
    rm /opt/$ZIP && \
    chmod 755 /opt/FastQC/fastqc && \
    sudo ln -s /opt/FastQC/fastqc /usr/local/bin/fastqc

