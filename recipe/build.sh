#!/bin/bash

set -euxo pipefail

export OPENSSL_DIR=$PREFIX

# This is required to get the aarch64 builds to finish without oom errors.
export CARGO_PROFILE_RELEASE_LTO=thin

pushd python
${PYTHON} -m pip install . -vv --no-deps --no-build-isolation
