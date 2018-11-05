################## Base Image ####################
FROM binf/base:latest

################## METADATA ######################
LABEL base.image="binf/base:latest"
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
RUN sudo apk add R && \
    sudo rm -rf /var/cache/apk/*