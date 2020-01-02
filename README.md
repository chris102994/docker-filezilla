 [![Build Status](https://travis-ci.com/chris102994/docker-filezilla.svg?branch=master)](https://travis-ci.com/chris102994/docker-filezilla)

## Outside Packages
* Built on my [Base GUI Image](https://github.com/chris102994/docker-base-image-gui)
  * [FileZilla](https://filezilla-project.org/) - A cross-platform pgraphical FTP/S and S/FTP file management tool.

## Docker
```
docker create \
	--name=docker-filezilla \
	-e APP_NAME=xterm `optional` \
	-p 5700:5700 \
	-v </path/to/appdata/config>:/config \
  -v </path/to/data>:/mnt \
	--restart unless-stopped \
	christopher102994/docker-filezilla
```

## Parameters
Container specific parameters passed at runtime. The format is `<external>:<internal>` (e.g. `-p 443:22` maps the container's port 22 to the host's port 443).

| Parameter | Function |
| -------- | -------- |
| -p 5700 | The web encrypted UI port. |
| -v /config | The directory where the application will store configuration information. |
| -v /mnt | The path that data that you wish to transfer will be mounted to. |