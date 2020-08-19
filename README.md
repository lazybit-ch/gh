# gh

[GitHub CLI](https://github.com/cli/cli) `docker` image build.

## Build

This image is built, packaged and released using [GitHub Actions](https://github.com/features/actions).

Images are tagged using the version of the GitHub CLI release packaged in the image.

The version of the GitHub CLI is also set in the containers `GITHUB_CLI_VERSION` environment variable.

## Usage

GitHub CLI usage is documented in the [manual](https://cli.github.com/manual/).

Example: `docker run --rm -it docker.pkg.github.com/lazybit-ch/gh/gh:v0.11.1 --version`
