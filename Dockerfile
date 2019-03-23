# Run awscli in a container
# docker run --rm -it -v $HOME/.aws:/root/.aws -v $(pwd):/workdir -e AWS_PROFILE=$AWS_PROFILE craighurley/docker-awscli

FROM        python:3.6-alpine3.9
MAINTAINER  Craig Hurley

WORKDIR     /workdir

RUN         apk --no-cache add \
                groff

RUN         pip3 install --no-cache-dir \
                awscli==1.16.128

ENTRYPOINT  [ "aws" ]
