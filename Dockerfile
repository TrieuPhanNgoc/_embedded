FROM ubuntu:latest

RUN apt-get update && apt-get install -y build-essential \
    git wget flex bison gperf python3 python3-venv cmake ninja-build ccache libffi-dev libssl-dev dfu-util libusb-1.0-0 \
    make libtool pkg-config autoconf automake texinfo libusb-1.0


RUN mkdir -p ~/esp && cd ~/esp && git clone --recursive https://github.com/espressif/esp-idf.git

RUN git clone https://github.com/espressif/openocd-esp32/releases && cd ~/esp && tar -xzf ~/Downloads/openocd-esp32-linux64-<version>.tar.gz