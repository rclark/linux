# linux

Easy linux-on-osx via Docker.

## Prerequisite

You need to be running Docker. [Installation instructions are here](https://docs.docker.com/engine/installation/).

## Install and run

```sh
$ git clone https://github.com/rclark/linux
$ cd linux && npm link
$ linux --no-cache
root@f9bbea94d984:/#
```

The first build will take a while. After the first build, there's no need to add the `--no-cache` option and subsequent `linux` commands will start quickly.

## Perks

- Passes AWS credentials from host environment onto the linux container
- Installs git, curl, vim, zip, python, node.js, and awscli
- Very easy to adjust your own environment by changing the included Dockerfile and running `linux` again
