################## Base Image ####################
FROM binfgsc/base-make:latest as base

################## METADATA ######################
LABEL base.image="binfgsc/base:latest"
LABEL version="1"
LABEL software="R"
LABEL software.version="latest"
LABEL about.summary="A free software environment for statistical computing and graphics"
LABEL about.home="https://www.r-project.org/"
LABEL about.documentation="http://cran.r-project.org/manuals.html"
LABEL about.license="GNU:GPL-3"
LABEL about.license.file="https://www.gnu.org/licenses/gpl.html"

################## MAINTAINER ######################
LABEL maintainer.name="William Hargreaves"
LABEL maintainer.email="whargrea@uoguelph.ca"

################# INSTALLATION ######################
ENV URL=https://github.com/eddelbuettel/littler/archive/
ENV TAR=0.3.5.tar.gz

RUN sudo apk add R R-dev && \
    sudo rm -rf /var/cache/apk/* && \
    wget $URL/$TAR -P /opt && \
    sudo R CMD INSTALL /opt/$TAR

# transfer littler to a small base image without all the make and dev stuff
FROM binf/base:latest

RUN sudo apk add R

COPY --from=base /usr/lib/R/library /usr/lib/R/library

RUN sudo ln -s /usr/lib/R/library/littler/bin/r /usr/local/bin/r && \
    sudo r -e 'install.packages("docopt", repos = "http://cran.utstat.utoronto.ca/")'        