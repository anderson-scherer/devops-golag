# CI challenge - Code.education 

- [GoLang](https://hub.docker.com/repository/docker/andersonscherer/golang)
- [Image docker-compose](https://github.com/anderson-scherer/docker-compose)

## Result expect in Google Cloud Build

**Steps**
- Build Sumary
- 0: RUN docker-compose
- 1: RUN golang application test
- 2: RUN golang application main.go

## Version latest

**Commands**
```
$ docker pull andersonscherer/golang:latest
$ docker run --name golang-0 andersonscherer/golang
$ docker-compose up
```

**Expected**

```
$ Hello, world!

```

## Version 1.0.1

**Commands**
```
$ docker pull andersonscherer/golang:1.0.1
$ docker run --name golang-0 andersonscherer/golang
$ docker-compose up
```

Expected

```
$ The sum result: 10



