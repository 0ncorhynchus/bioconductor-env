FROM ubuntu:14.04

RUN echo "deb http://cran.md.tsukuba.ac.jp/bin/linux/ubuntu trusty/" >> /etc/apt/sources.list
RUN gpg --keyserver keyserver.ubuntu.com --recv-key E084DAB9
RUN gpg -a --export E084DAB9 | sudo apt-key add -
RUN apt-get update
RUN apt-get install -y r-base libxml2-dev libcurl4-gnutls-dev


# Adding no-root user
RUN useradd -d /data -m r-user
USER r-user
WORKDIR /data

# Creating a mount point
VOLUME /data

CMD ["R"]
