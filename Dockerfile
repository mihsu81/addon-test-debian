#ARG BUILD_FROM
#FROM $BUILD_FROM
FROM homeassistant/armv7-base-debian:buster
RUN apt-get update && apt-get upgrade -y
RUN apt-get install --no-install-recommends -y \
    build-essential \
    bluez \
    python3-pip \
    python3-dev \
    libglib2.0-dev \
	cmake \
	ninja-build \
	libssl-dev \
	apt-utils
RUN pip3 install --upgrade pip setuptools wheel
RUN pip3 install TheengsGateway
RUN pip3 install --upgrade TheengsGateway
ENV current /root
ENV HOME $current
WORKDIR $current
COPY run.sh /root
COPY entrypoint.sh /root
RUN chmod a+x /root/run.sh
RUN chmod a+x /root/entrypoint.sh
ENTRYPOINT ["/root/entrypoint.sh"]
CMD [ "/root/run.sh" ]
