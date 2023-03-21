# syntax = docker/dockerfile:1
FROM debian:bullseye-slim

# No Error And Continue
RUN <<EOF
apt-get install -y notexist
echo "heredoc" >> /tmp/test
EOF

# Error And Stop
RUN apt-get install -y notexist \
  && echo "run" >> /tmp/test

RUN echo "Hello World" >> /tmp/test
