# docker-awscli

Run awscli in a container.

## Running

Run awscli in a container:

```sh
# AWS_PROFILE is set to default within the container
docker run --rm -it -v $HOME/.aws:/root/.aws -v $(pwd):/workdir craighurley/docker-awscli

# AWS_PROFILE is set to match the hosts value
docker run --rm -it -v $HOME/.aws:/root/.aws -v $(pwd):/workdir -e AWS_PROFILE craighurley/docker-awscli
```

Optional: create an alias for the container:

```sh
alias aws='docker run --rm -it -v $HOME/.aws:/root/.aws -v $(pwd):/workdir -e AWS_PROFILE craighurley/docker-awscli'
```

## Links

* <https://aws.amazon.com/cli/>
* <https://alpinelinux.org>
* <https://docs.docker.com>
