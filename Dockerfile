ARG BUILD_FROM
FROM $BUILD_FROM
LABEL io.hass.version="dev" io.hass.type="addon" io.hass.arch="armv7|armhf|aarch64|i386|amd64"
#RUN apt-get update && apt-get upgrade -y
#RUN apt-get install --no-install-recommends -y \
#    build-essential \
#    bluez \
#    python3-pip \
#    python3-dev \
#    libglib2.0-dev \
#	cmake \
#	ninja-build
#RUN pip3 install --upgrade pip setuptools wheel
#RUN pip3 install TheengsGateway
#RUN pip3 install --upgrade TheengsGateway
#ENV current /root
#ENV HOME $current
#WORKDIR $current
#COPY run.sh /root
#COPY entrypoint.sh /root
#RUN chmod a+x /root/run.sh
#RUN chmod a+x /root/entrypoint.sh
#ENTRYPOINT ["/root/entrypoint.sh"]
#CMD [ "/root/run.sh" ]
