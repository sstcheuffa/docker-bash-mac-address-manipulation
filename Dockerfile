FROM ubuntu

RUN apt-get update -y && apt-get upgrade -y && apt-get install curl -y

ENV MAC_ADDR=

COPY ./get-mac-vendor.sh /

RUN chmod 755 /get-mac-vendor.sh


CMD /get-mac-vendor.sh $MAC_ADDR
