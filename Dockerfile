# Pull the base image
FROM christopher102994/docker-base-img-gui:alpine-3.10
MAINTAINER chris102994<chris102994@yahoo.com>
ARG BUILD_DATE
ARG VERSION

ENV APP_NAME=FileZilla

RUN echo "##### Downloading Runtime Packages #####" && \
		apk add --no-cache \
			filezilla && \
    echo "##### App Setup #####" && \
		sed -i 's#APP_NAME#FileZilla#g' /etc/xdg/openbox/menu.xml && \
		sed -i 's#APP_ICON_LOC#/usr/share/icons/hicolor/16x16/apps/filezilla.png#g' /etc/xdg/openbox/menu.xml && \
		sed -i 's#APP_COMMAND#filezilla#g' /etc/xdg/openbox/menu.xml && \
		sed -i 's#APP_COMMAND#filezilla#g' /etc/xdg/openbox/autostart && \
		cp /usr/share/icons/hicolor/16x16/apps/filezilla.png /etc/noVNC/app/images/icons/novnc-16x16.png

# VNC Web Interface VNC
EXPOSE 5700 
#Work Dir
WORKDIR /mnt
