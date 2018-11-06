################# BASE IMAGE ######################
FROM binf/base:latest

################## METADATA #######################
LABEL base.image="binf/base:latest"
LABEL about.summary="A base image running programs that reuirte java"

################## MAINTAINER #####################
LABEL maintainer.name="William Hargreaves"
LABEL maintainer.email="whargrea@uoguelph.ca"

################# INSTALLATION ####################
# install the sudo package and java
RUN apk update && \
    apk add --no-cache openjdk8-jre