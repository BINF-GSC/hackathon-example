################## Base Image ####################
FROM binf/base-java:latest

################## METADATA ######################
LABEL base.image="binf/base:latest"
LABEL version="1"
LABEL software="trimmomatic"
LABEL software.version="latest"
LABEL about.summary="A flexible read trimming tool for Illumina NGS data"
LABEL about.home="http://www.usadellab.org/cms/?page=trimmomatic"
LABEL about.documentation="http://www.usadellab.org/cms/uploads/supplementary/Trimmomatic/TrimmomaticManual_V0.32.pdf"
LABEL about.license="GNU:GPL"
LABEL about.license.file="https://www.gnu.org/licenses/gpl.html"

################## MAINTAINER ######################
LABEL maintainer.name="William Hargreaves"
LABEL maintainer.email="whargrea@uoguelph.ca"

################# INSTALLATION ######################
ENV URL=http://www.usadellab.org/cms/uploads/supplementary/Trimmomatic
ENV ZIP=Trimmomatic-0.38.zip

RUN wget $URL/$ZIP -P /opt && \
    unzip /opt/$ZIP -d /opt && \
    rm /opt/$ZIP

# create an environment varaible that hodl the location of the trimmomatic jar
ENV TRIM=/opt/Trimmomatic-0.38/trimmomatic-0.38.jar