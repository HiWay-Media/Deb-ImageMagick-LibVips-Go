FROM ghcr.io/hiway-media/deb-imagemagick-libvips:latest as base
#
FROM golang:1.19-bullseye
#
COPY --from=base /usr/local/lib /usr/local/lib
COPY --from=base /usr/include/vips /usr/include/vips
COPY --from=base /usr/lib/x86_64-linux-gnu /usr/lib/x86_64-linux-gnu
#
CMD ["/bin/bash"]
#