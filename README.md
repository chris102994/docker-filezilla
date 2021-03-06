## [chris102994/docker-docker-filezilla](https://github.com/chris102994/docker-filezilla)

[![https://filezilla-project.org/](https://upload.wikimedia.org/wikipedia/commons/0/01/FileZilla_logo.svg)](https://filezilla-project.org/)

[![Build Status](https://travis-ci.com/chris102994/docker-filezilla.svg?branch=master)](https://travis-ci.com/chris102994/docker-filezilla)
[![Microbadger Size & Layers](https://images.microbadger.com/badges/image/christopher102994/docker-filezilla.svg)](https://microbadger.com/images/christopher102994/docker-filezilla "Get your own image badge on microbadger.com")
 [![Image Pulls](https://img.shields.io/docker/pulls/christopher102994/docker-filezilla)](https://hub.docker.com/repository/docker/christopher102994/docker-filezilla)
 [![Latest](https://images.microbadger.com/badges/version/christopher102994/docker-filezilla:latest.svg)](https://microbadger.com/images/christopher102994/docker-filezilla:latest "Get your own version badge on microbadger.com")


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
	christopher102994/docker-filezilla:latest
```

## Parameters
Container specific parameters passed at runtime. The format is `<external>:<internal>` (e.g. `-p 443:22` maps the container's port 22 to the host's port 443).

| Parameter | Function |
| -------- | -------- |
| -p 5700 | The web encrypted UI port. |
| -v /config | The directory where the application will store configuration information. |
| -v /mnt | The path that data that you wish to transfer will be mounted to. |
| -e USERNAME | The Username you wish to run as. (Optional) |
| -e GROUPNAME | The Groupname you wish to run as. (Optional) |
| -e PUID | The UID you wish to run and save files as. (Optional) |
| -e PGID | The GID you wish to run and save files as. (Optional) |
| -e VNC_PASSWORD | Password for the VNC session. (Optional) |
| -e DISPLAY_WIDTH | VNC Server's display width. (Optional) |
| -e DISPLAY_HEIGHT | VNC Server's displat height. (Optional) |

## Application Setup

The admin interface is available at `http://<ip>:<port>/`

Access the mounted files within the web interface at `/mnt`
