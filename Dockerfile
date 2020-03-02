FROM ubuntu:18.04

ARG GITHUB_CLI_VERSION
ENV GITHUB_CLI_VERSION=${GITHUB_CLI_VERSION:-"0.5.7"}

SHELL ["/bin/bash", "-o", "pipefail", "-c"]

# hadolint ignore=DL3009
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
        curl=7.58.0-2ubuntu3.8 \
        ca-certificates=20180409

RUN curl -L https://github.com/cli/cli/releases/download/v${GITHUB_CLI_VERSION}/gh_${GITHUB_CLI_VERSION}_linux_amd64.tar.gz | tar xvz --strip-components 2 -C /usr/local/bin

ENTRYPOINT ["/usr/local/bin/gh"]
