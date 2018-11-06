################## Base Image ####################
FROM binf/base:latest

################## METADATA ######################
LABEL base.image="binf/base:latest"
LABEL version="1"
LABEL software="star"
LABEL software.version="2.6.1c"
LABEL about.summary="Spliced Transcripts Alignment to a Reference"
LABEL about.home="https://github.com/alexdobin/STAR"
LABEL about.documentation="https://github.com/alexdobin/STAR/blob/master/doc/STARmanual.pdf"
LABEL about.license="GPLv3"
LABEL about.license.file="https://github.com/alexdobin/STAR/blob/master/LICENSE"

################## MAINTAINER ######################
LABEL maintainer.name="William Hargreaves"
LABEL maintainer.email="whargrea@uoguelph.ca"

################## INSTALLATION ######################
ENV URL=https://github.com/alexdobin/STAR/archive/
ENV TAR=2.6.1c.tar.gz

RUN sudo apk add --no-cache 

RUN wget $URL/$TAR -P /opt && \
    sudo tar -xzvf /opt/$TAR -C /opt && \
    sudo ln -s /opt/STAR-2.6.1c/bin/Linux_x86_64_static/STAR /usr/local/bin/star