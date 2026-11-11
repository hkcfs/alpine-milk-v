FROM ubuntu:noble

ENV DOCKER_BUILD=true

RUN mkdir /project
WORKDIR /project
# Copy the whole scripts/ tree first: setup.sh sources scripts/ci/apt-mirror.sh
# to fall back to reachable Ubuntu mirrors (the hosted runners and the build
# host both occasionally fail to resolve *.ubuntu.com).
COPY scripts/ /project/scripts/
RUN /project/scripts/setup.sh
RUN git clone https://github.com/pengutronix/genimage
WORKDIR /project/genimage
RUN ./autogen.sh && ./configure && make && make install
WORKDIR /project

# Copy project files
COPY build.sh /project/
COPY genimage.cfg /project/
COPY multi.its.in /project/
COPY milkv-bootloader /project/milkv-bootloader/
COPY kernel/ /project/kernel/
COPY packages/ /project/packages/
RUN chmod +x /project/build.sh /project/scripts/*.sh /project/scripts/ci/*.sh
