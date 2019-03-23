# docker-awscli

Run awscli in a container.

## Running

Run awscli in a container:

```sh
docker run --rm -it -v $HOME/.aws:/root/.aws -v $(pwd):/workdir -e AWS_PROFILE=$AWS_PROFILE craighurley/docker-awscli
```

Optional: create an alias for the container:

```sh
alias aws='docker run --rm -it -v $HOME/.aws:/root/.aws -v $(pwd):/workdir -e AWS_PROFILE=$AWS_PROFILE craighurley/docker-awscli'
```

## Links

* <https://aws.amazon.com/cli/>
* <https://alpinelinux.org>
* <https://docs.docker.com>
