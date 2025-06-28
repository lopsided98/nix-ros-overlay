
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, bluez, boost, cmake, dbus, gtest, libusb1, openssl, python3, python3Packages, zlib }:
buildRosPackage {
  pname = "ros-kilted-robotraconteur";
  version = "1.2.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/robotraconteur-release/archive/release/kilted/robotraconteur/1.2.2-2.tar.gz";
    name = "1.2.2-2.tar.gz";
    sha256 = "ccb40bdaf54d3ba5e4ead0a3771afb46e16ff63b224cb5aaa0361a8f1f90dafb";
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
