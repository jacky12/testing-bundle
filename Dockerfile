FROM ruby:latest


RUN set -eux; \
    export DEBIAN_FRONTEND=noninteractive; \
    apt-get update -y; \
    apt-get install -y \
      jq; \
    apt-get clean all; \
    rm -rf /var/lib/apt/lists/*;
