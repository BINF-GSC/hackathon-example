################## Base Image ####################
FROM binf/base-java:latest

################## METADATA ######################
LABEL base.image="binf/bbtools:latest"
LABEL version="1"
LABEL software="bbtools"
LABEL software.version="latest"
LABEL about.summary=" suite of fast, multithreaded bioinformatics tools designed for analysis of DNA and RNA sequence data"
LABEL about.home="https://jgi.doe.gov/data-and-tools/bbtools/"
LABEL about.documentation="https://jgi.doe.gov/data-and-tools/bbtools/bb-tools-user-guide/"
LABEL about.license="GNU:GPL"
LABEL about.license.file="https://www.gnu.org/licenses/gpl.html"

################## MAINTAINER ######################
LABEL maintainer.name="William Hargreaves"
LABEL maintainer.email="whargrea@uoguelph.ca"

################# INSTALLATION ######################
ENV URL=https://pilotfiber.dl.sourceforge.net/project/bbmap/
ENV TAR=BBMap_38.26.tar.gz

RUN sudo apk add --no-cache bash && \
    wget $URL/$TAR -P /opt && \
    tar -xzvf /opt/$TAR -C /opt && \
    rm /opt/$TAR

# add the bbtools directory to the PATH
ENV PATH=$PATH:/opt/bbmap