FROM debian:latest

RUN apt-get update -y \
    && apt-get install -y git \ 
    && apt-get install -y httpie \
    && apt-get install -y jq

COPY entrypoint.sh /usr/local/bin/entrypoint.sh

ENTRYPOINT ["entrypoint.sh"]