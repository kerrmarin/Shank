#!/usr/bin/env bash

SWIFT_VERSION="5.1"
UBUNTU_VERSION_SHORT="1804"
UBUNTU_VERSION="18.04"

swift --version
sudo apt-get update
sudo apt-get install libcurl3 libpython2.7 libpython2.7-dev

wget "https://swift.org/builds/swift-${SWIFT_VERSION}-release/ubuntu${UBUNTU_VERSION_SHORT}/swift-${SWIFT_VERSION}-RELEASE/swift-${SWIFT_VERSION}-RELEASE-ubuntu${UBUNTU_VERSION}.tar.gz"
tar xzf "swift-${SWIFT_VERSION}-RELEASE-ubuntu${UBUNTU_VERSION}.tar.gz"
sudo mv "swift-${SWIFT_VERSION}-RELEASE-ubuntu${UBUNTU_VERSION}" /usr/share/swift
echo "export PATH=/usr/share/swift/usr/bin:$PATH" >> ~/.bashrc
source  ~/.bashrc
swift --version
