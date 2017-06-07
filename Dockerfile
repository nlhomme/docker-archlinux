FROM scratch
MAINTAINER nlhomme (https://github.com/nlhomme/docker-archlinux)

# copy in super minimal root filesystem archive
ADD archlinux.tar.xz /

# perform initial container setup tasks
RUN setup-arch-docker-container

# this allows the system profile to be sourced at every shell
ENV ENV /etc/profile
