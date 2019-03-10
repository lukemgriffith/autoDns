from resin/rpi-raspbian

COPY ./autoDns /usr/local/bin/autoDns
COPY ./terraform /usr/local/bin/terraform
COPY ./*.tf ~/

RUN mkdir /opt/autoDnsState


ENV tfDir ~

ENV zone_name lukegriffith.co.uk

ENV a_record dwelling

CMD autoDns
