FROM rocker/r-devel
ADD install_packages.R /tmp/install_packages.R
RUN apt-get update
RUN apt-get install openssl libssl-dev -y
RUN Rscript /tmp/install_packages.R
