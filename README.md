# vmdktool Docker image

A Docker image that allow to use
[vmdktool](http://www.awfulhak.org/vmdktool/) for converting VMDK images.

No VirtualBox or VMWare required.


## Build

    $ docker build -t vmdktool .

Or fetch:

    $ docker pull djui/vmdktool


## Usage

    $ docker run --rm -it -v my_image.vmdk:/tmp/my_image.vmdk vmdktool -V
    vmdktool version 1.4
