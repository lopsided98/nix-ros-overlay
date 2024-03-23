
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, bluez, boost, cmake, dbus, gtest, libusb1, openssl, python3, python3Packages, zlib }:
buildRosPackage {
  pname = "ros-iron-robotraconteur";
  version = "1.1.1-r1";

  src = fetchurl {
    url = "https://github.com/robotraconteur-packaging/robotraconteur-ros2-release/archive/release/iron/robotraconteur/1.1.1-1.tar.gz";
    name = "1.1.1-1.tar.gz";
    sha256 = "d8c4b6665e9826694246c9e6c4106b835658ef20d2b90b49985ee0a95e2895bd";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  checkInputs = [ gtest ];
  propagatedBuildInputs = [ bluez boost dbus libusb1 openssl python3 python3Packages.numpy python3Packages.setuptools zlib ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "The robotraconteur package";
    license = with lib.licenses; [ asl20 ];
  };
}
