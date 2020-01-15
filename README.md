## [chris102994/docker-docker-filezilla](https://github.com/chris102994/docker-filezilla)

[![https://filezilla-project.org/](https://upload.wikimedia.org/wikipedia/commons/0/01/FileZilla_logo.svg)](https://filezilla-project.org/)

[![Build Status](https://travis-ci.com/chris102994/docker-filezilla.svg?branch=master)](https://travis-ci.com/chris102994/docker-filezilla)
 [![Image Size](https://img.shields.io/microbadger/image-size/christopher102994/docker-filezilla/alpine-3.10)](https://hub.docker.com/repository/docker/christopher102994/docker-filezilla)
 [![Image Layers](https://img.shields.io/microbadger/layers/christopher102994/docker-filezilla/alpine-3.10)](https://hub.docker.com/repository/docker/christopher102994/docker-filezilla)
 [![Image Pulls](https://img.shields.io/docker/pulls/christopher102994/docker-filezilla)](https://hub.docker.com/repository/docker/christopher102994/docker-filezilla)

## Outside Packages
* Built on my [Base GUI Image](https://github.com/chris102994/docker-base-image-gui)
  * [FileZilla](https://filezilla-project.org/) - A cross-platform graphical FTP/S and S/FTP file management tool.

## Docker
```
docker run \
	--name=docker-filezilla \
	-p 5700:5700 \
	-v </path/to/appdata/config>:/config \
  	-v </path/to/data>:/mnt \
	--restart unless-stopped \
	christopher102994/docker-filezilla:alpine-3.10
```

## Parameters
Container specific parameters passed at runtime. The format is `<external>:<internal>` (e.g. `-p 443:22` maps the container's port 22 to the host's port 443).

| Parameter | Function |
| -------- | -------- |
| -p 5700 | The web encrypted UI port. |
| -v /config | The directory where the application will store configuration information. |
| -v /mnt | The path that data that you wish to transfer will be mounted to. |

## Application Setup

The admin interface is available at `http://<ip>:<port>/`

Access the mounted files within the web interface at `/mnt`
