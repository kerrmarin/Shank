#!/usr/bin/env bash

SWIFT_VERSION="5.1"
UBUNTU_VERSION_SHORT="1804"
UBUNTU_VERSION="18.04"

sudo apt-get update
sudo apt-get install clang libicu-dev libpython2.7

wget "https://swift.org/builds/swift-${SWIFT_VERSION}-release/ubuntu${UBUNTU_VERSION_SHORT}/swift-${SWIFT_VERSION}-RELEASE/swift-${SWIFT_VERSION}-RELEASE-ubuntu${UBUNTU_VERSION}.tar.gz"
tar xzf "swift-${SWIFT_VERSION}-RELEASE-ubuntu${UBUNTU_VERSION}.tar.gz"
export PATH="swift-${SWIFT_VERSION}-RELEASE-ubuntu${UBUNTU_VERSION}/usr/bin:${PATH}"
