# docker-awscli

Run awscli in a container.

## Running

Run the awscli in a container:

```sh
docker run --rm -it -v $HOME/.aws:/root/.aws -v $(pwd):/workdir craighurley/docker-awscli
```

One option for a shortcut is to create an alias:

```sh
alias awscli='docker run --rm -it -v $HOME/.aws:/root/.aws -v $(pwd):/workdir craighurley/docker-awscli'
```

## Links

* <https://aws.amazon.com/cli/>
* <https://alpinelinux.org>
* <https://docs.docker.com>
