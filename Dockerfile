# Pull the base image
FROM christopher102994/docker-base-img-gui:alpine-3.10
MAINTAINER chris102994<chris102994@yahoo.com>
ARG BUILD_DATE
ARG VERSION
ARG VCS_REF
LABEL org.label-schema.vcs-ref=$VCS_REF \
      org.label-schema.vcs-url="https://github.com/chris102994/docker-filezilla"
ENV APP_NAME=FileZilla

RUN echo "##### Downloading Runtime Packages #####" && \
		install \
			filezilla && \
    echo "##### App Setup #####" && \
		sed -i 's#APP_NAME#FileZilla#g' /etc/xdg/openbox/menu.xml && \
		sed -i 's#APP_ICON_LOC#/usr/share/icons/hicolor/16x16/apps/filezilla.png#g' /etc/xdg/openbox/menu.xml && \
		sed -i 's#APP_COMMAND#/usr/bin/filezilla --local=/storage#g' /app/start_app.sh && \
		cp /usr/share/icons/hicolor/16x16/apps/filezilla.png /etc/noVNC/app/images/icons/novnc-16x16.png
#Work Dir
WORKDIR /mnt
