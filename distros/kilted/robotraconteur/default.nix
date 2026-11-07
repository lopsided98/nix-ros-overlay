
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, bluez, boost, cmake, dbus, gtest, libusb1, openssl, python3, python3Packages, swig, zlib }:
buildRosPackage {
  pname = "ros-kilted-robotraconteur";
  version = "1.2.9-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/robotraconteur-release/archive/release/kilted/robotraconteur/1.2.9-1.tar.gz";
    name = "1.2.9-1.tar.gz";
    sha256 = "107b9bb54c3ce8e5b1e6349088068a566bef2d0cde3d714998e7a2a18e04bb5f";
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
