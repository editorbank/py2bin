FROM ubuntu
ENV PYTHONIOENCODING UTF-8
COPY ./*.sh /
RUN bash -c /install.sh
VOLUME /pwd
WORKDIR /pwd
