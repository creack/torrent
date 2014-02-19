FROM		stackbrew/ubuntu:13.10
MAINTAINER	Guillaume J. Charmes <guillaume@charmes.net>
RUN		apt-get update
RUN		apt-get install -y aria2
ADD		http://releases.ubuntu.com/13.10/ubuntu-13.10-server-amd64.iso.torrent /ubuntu.torrent
RUN		aria2c /ubuntu.torrent
