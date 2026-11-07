
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, bluez, boost, cmake, dbus, gtest, libusb1, openssl, python3, python3Packages, swig, zlib }:
buildRosPackage {
  pname = "ros-lyrical-robotraconteur";
  version = "1.2.9-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/robotraconteur-release/archive/release/lyrical/robotraconteur/1.2.9-1.tar.gz";
    name = "1.2.9-1.tar.gz";
    sha256 = "9c56d42d15ce0ec242b625ac0ff17fa21ccc2dd9a2e3f21d89fa71271e39c301";
  };

  buildType = "cmake";
  buildInputs = [ cmake swig ];
  checkInputs = [ gtest ];
  propagatedBuildInputs = [ bluez boost dbus libusb1 openssl python3 python3Packages.numpy python3Packages.setuptools zlib ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "The robotraconteur package";
    license = with lib.licenses; [ asl20 ];
  };
}
