FROM darakeon/ubuntu
LABEL maintainer="Dara Keon <laboon@darakeon.com>"

RUN maintain
RUN apt install woff-tools

COPY transform.sh /var/fonts/transform.sh
RUN chmod +x /var/fonts/transform.sh

WORKDIR /var/fonts

CMD ./transform.sh
