#ARG BUILD_FROM
#FROM $BUILD_FROM
FROM homeassistant/armv7-base-debian:buster
RUN apt-get update && apt-get upgrade -y && \
    apt-get install --no-install-recommends -y bluez python3-pip && \
    pip3 install --extra-index-url=https://www.piwheels.org/simple TheengsGateway
ENV current /root
ENV HOME $current
WORKDIR $current
COPY run.sh /root
COPY entrypoint.sh /root
RUN chmod a+x /root/run.sh
RUN chmod a+x /root/entrypoint.sh
ENTRYPOINT ["/root/entrypoint.sh"]
CMD [ "/root/run.sh" ]
