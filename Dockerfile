ARG osversion=xenial
FROM ubuntu:${osversion}

ARG VERSION=master
ARG VCS_REF
ARG BUILD_DATE
ARG osversion

RUN echo "VCS_REF: "${VCS_REF}", BUILD_DATE: "${BUILD_DATE}", VERSION: "${VERSION}", osversion: "${osversion}

LABEL maintainer="frank.foerster@ime.fraunhofer.de" \
      description="Dockerfile providing the DESeq2 software" \
      version=${VERSION} \
      org.label-schema.vcs-ref=${VCS_REF} \
      org.label-schema.build-date=${BUILD_DATE} \
      org.label-schema.vcs-url="https://github.com/greatfireball/ime_deseq2.git"
      
RUN apt update && \
    apt --yes install \
       apt-transport-https \
       software-properties-common \
       wget && \
    apt-key adv --keyserver keyserver.ubuntu.com --recv-keys E298A3A825C0D65DFD57CBB651716619E084DAB9 && \
    add-apt-repository 'deb [arch=amd64,i386] https://cran.rstudio.com/bin/linux/ubuntu '${osversion}'/' && \
    apt update && \
    apt install --yes \
       libcurl4-openssl-dev \
       libxml2-dev \
       r-base \
       r-base-dev && \
    apt --yes autoremove \
    && apt autoclean \
    && rm -rf /var/lib/apt/lists/* /var/log/dpkg.log

RUN Rscript -e 'source("https://bioconductor.org/biocLite.R"); biocLite("DESeq2",suppressUpdates=T, ask=F, suppressAutoUpdate=T);'
RUN wget -O /tmp/deseq2.tar.gz https://bioconductor.org/packages/3.5/bioc/src/contrib/DESeq2_1.16.1.tar.gz && Rscript -e 'remove.packages("DESeq2"); install.packages("/tmp/deseq2.tar.gz");'

VOLUME /data

WORKDIR /data
