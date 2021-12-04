# Pull Base Image
FROM ubuntu:20.04

# Install Syncthing
RUN apt update
RUN apt install syncthing -y

# make Syncthing accessible from anydevice
ENV STGUIADDRESS=0.0.0.0:8384

# Launch Syncthing on Startup
ENTRYPOINT ["syncthing"]
