
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, bluez, boost, cmake, dbus, gtest, libusb1, openssl, python3, python3Packages, swig, zlib }:
buildRosPackage {
  pname = "ros-humble-robotraconteur";
  version = "0.16.0-r4";

  src = fetchurl {
    url = "https://github.com/robotraconteur-packaging/robotraconteur-ros2-release/archive/release/humble/robotraconteur/0.16.0-4.tar.gz";
    name = "0.16.0-4.tar.gz";
    sha256 = "588df38a171f3cefd97f2ab935b6d80c1a6310c506946d23d6a58b5e9c38937d";
  };

  buildType = "cmake";
  buildInputs = [ cmake swig ];
  checkInputs = [ gtest ];
  propagatedBuildInputs = [ bluez boost dbus libusb1 openssl python3 python3Packages.numpy python3Packages.setuptools zlib ];
  nativeBuildInputs = [ cmake swig ];

  meta = {
    description = ''Robot Raconteur ROS Package'';
    license = with lib.licenses; [ asl20 ];
  };
}
