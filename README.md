# vmdktool Docker image

A Docker image that allow to use
[vmdktool](http://www.awfulhak.org/vmdktool/) for converting VMDK images.

No VirtualBox or VMWare required.


## Usage

    $ docker build -t vmdktool .
    $ docker run --rm -it -v my_image.vmdk:/tmp/my_image.vmdk vmdktool -V
    vmdktool version 1.4
