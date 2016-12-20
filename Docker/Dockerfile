FROM clashclanvn/app_build:0.1
RUN apt-get -y install make
RUN mkdir /opt/Docker
COPY Dockerfile /opt/Docker/
COPY Makefile /opt/Docker/
RUN cd /opt/Docker/
CMD ["/usr/bin/make", "build"] 
CMD ["/usr/bin/make", "git"] 
