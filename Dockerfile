# Run awscli in a container
# docker run --rm -it -v $HOME/.aws:/root/.aws -v $(pwd):/workdir -e AWS_PROFILE craighurley/docker-awscli

FROM        python:3.6-alpine3.9
MAINTAINER  Craig Hurley

WORKDIR     /workdir

ENV         AWS_PROFILE=default

COPY        docker-entrypoint.sh /usr/local/bin/

RUN         chmod +x /usr/local/bin/docker-entrypoint.sh \
            && apk --no-cache add \
                ca-certificates \
                groff \
                less \
            && update-ca-certificates
            && pip3 install --no-cache-dir \
                awscli==1.16.128

ENTRYPOINT  [ "docker-entrypoint.sh" ]
