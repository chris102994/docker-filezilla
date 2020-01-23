# Pull the base image
ARG BASE_IMAGE=unknown
FROM ${BASE_IMAGE}
MAINTAINER chris102994<chris102994@yahoo.com>
ARG BUILD_DATE
ARG VERSION
ARG VCS_REF
LABEL org.label-schema.vcs-ref=$VCS_REF \
      org.label-schema.vcs-url="https://github.com/chris102994/docker-filezilla"
ENV APP_NAME=FileZilla

RUN echo "##### Downloading Runtime Packages #####" && \
		inst-pkg \
			filezilla && \
    echo "##### App Setup #####" && \
		sed -i 's#APP_COMMAND#/usr/bin/filezilla --local=/storage#g' /app/start_app.sh && \
		cp /usr/share/icons/hicolor/16x16/apps/filezilla.png /etc/noVNC/app/images/icons/novnc-16x16.png && \
		mkdir -p \
			/storage && \
		chown -R 900:900 /storage && \
		chmod -R 0755 /storage

#Work Dir
WORKDIR /mnt
