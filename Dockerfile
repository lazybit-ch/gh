FROM ubuntu:20.04

ARG GITHUB_CLI_VERSION
ENV GITHUB_CLI_VERSION=${GITHUB_CLI_VERSION:-"1.10.3"}

SHELL ["/bin/bash", "-o", "pipefail", "-c"]

# hadolint ignore=DL3009
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
        curl=7.68.0-1ubuntu2.5 \
        ca-certificates=20210119~20.04.1 \
        git=1:2.25.1-1ubuntu3

RUN curl -L https://github.com/cli/cli/releases/download/v${GITHUB_CLI_VERSION}/gh_${GITHUB_CLI_VERSION}_linux_amd64.tar.gz | tar xvz --strip-components 2 -C /usr/local/bin

ENTRYPOINT ["/usr/local/bin/gh"]
