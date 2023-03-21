# syntax = docker/dockerfile:1
FROM debian:bullseye-slim

# No Error And Continue
RUN <<EOF
apt-get install -y notexist
ls -al
EOF

# Error And Stop
RUN apt-get install -y notexist \
  && ls -al

RUN echo "Hello World"
