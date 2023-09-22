
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, bluez, boost, cmake, dbus, gtest, libusb1, openssl, python3, python3Packages, zlib }:
buildRosPackage {
  pname = "ros-humble-robotraconteur";
  version = "0.18.0-r1";

  src = fetchurl {
    url = "https://github.com/robotraconteur-packaging/robotraconteur-ros2-release/archive/release/humble/robotraconteur/0.18.0-1.tar.gz";
    name = "0.18.0-1.tar.gz";
    sha256 = "38056a0041df92701b6a291b84ccd743e9310e53b573902d91ae7015feb7abba";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  checkInputs = [ gtest ];
  propagatedBuildInputs = [ bluez boost dbus libusb1 openssl python3 python3Packages.numpy python3Packages.setuptools zlib ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''The robotraconteur package'';
    license = with lib.licenses; [ asl20 ];
  };
}
