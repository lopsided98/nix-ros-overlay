
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, bluez, boost, cmake, dbus, gtest, libusb1, openssl, python3, python3Packages, zlib }:
buildRosPackage {
  pname = "ros-humble-robotraconteur";
  version = "1.2.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/robotraconteur-release/archive/release/humble/robotraconteur/1.2.5-1.tar.gz";
    name = "1.2.5-1.tar.gz";
    sha256 = "dbbb44b1c4a2b3b92f59c2c19b67bff6c9d332c1c93c5bf01a1aa85e7ac077df";
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
