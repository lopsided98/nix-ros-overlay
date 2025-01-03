
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, bluez, boost, catkin, cmake, dbus, gtest, libusb1, openssl, python3, python3Packages, zlib }:
buildRosPackage {
  pname = "ros-noetic-robotraconteur";
  version = "1.2.2-r3";

  src = fetchurl {
    url = "https://github.com/robotraconteur-packaging/robotraconteur-ros-release/archive/release/noetic/robotraconteur/1.2.2-3.tar.gz";
    name = "1.2.2-3.tar.gz";
    sha256 = "66e3619defcef5ab97debb99cd5d309f142765813aa59ab8f040cd8e93df60ce";
  };

  buildType = "cmake";
  buildInputs = [ catkin cmake ];
  checkInputs = [ gtest ];
  propagatedBuildInputs = [ bluez boost dbus libusb1 openssl python3 python3Packages.numpy python3Packages.setuptools zlib ];
  nativeBuildInputs = [ catkin cmake ];

  meta = {
    description = "The robotraconteur package";
    license = with lib.licenses; [ asl20 ];
  };
}
