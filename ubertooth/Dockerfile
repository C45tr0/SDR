FROM hotbox/hotbox

RUN apt-get update

# General build tools
RUN apt-get install -y cmake pkg-config

# Ubertooth firmware build needs
RUN apt-get install -y gcc-arm-none-eabi libnewlib-arm-none-eabi

# Ubertooth host tools build needs
RUN apt-get install -y libusb-1.0-0-dev bluez python-bluez libbluetooth-dev

# Install Ubertooth specan-ui deps
RUN apt-get install -y python-numpy python-pyside python-qt4

# Build GSG libbtbb
# https://github.com/greatscottgadgets/libbtbb
WORKDIR /root/libbtbb
RUN git fetch --tags
RUN git checkout 2018-08-R1
RUN mkdir build
WORKDIR /root/libbtbb/build
RUN cmake -DENABLE_PYTHON:BOOL=1 ..
RUN make
RUN make install

# Build GSG Ubertooth host tools
WORKDIR /root/ubertooth
RUN git fetch --tags
RUN git checkout 2018-08-R1
WORKDIR /root/ubertooth/firmware
RUN make
WORKDIR /root/ubertooth/host
RUN mkdir build
WORKDIR /root/ubertooth/host/build
RUN cmake -DENABLE_PYTHON:BOOL=1 ..
RUN make
RUN make install

WORKDIR /root/ubertooth

COPY upgrade.sh upgrade.sh

# Required to load new binaries
RUN ldconfig