
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, bluez, boost, catkin, cmake, dbus, gtest, libusb1, openssl, python3, python3Packages, zlib }:
buildRosPackage {
  pname = "ros-noetic-robotraconteur";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/robotraconteur-packaging/robotraconteur-ros-release/archive/release/noetic/robotraconteur/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "b13a141955c7375111c1b297f9af90d8ac3f50fd977ba3ef6851e6f7475a8370";
  };

  buildType = "cmake";
  buildInputs = [ catkin cmake ];
  checkInputs = [ gtest ];
  propagatedBuildInputs = [ bluez boost dbus libusb1 openssl python3 python3Packages.numpy python3Packages.setuptools zlib ];
  nativeBuildInputs = [ catkin cmake ];

  meta = {
    description = ''The robotraconteur package'';
    license = with lib.licenses; [ asl20 ];
  };
}
