
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, bluez, boost, catkin, cmake, dbus, gtest, libusb1, openssl, python3, python3Packages, zlib }:
buildRosPackage {
  pname = "ros-noetic-robotraconteur";
  version = "0.18.0-r2";

  src = fetchurl {
    url = "https://github.com/robotraconteur-packaging/robotraconteur-ros-release/archive/release/noetic/robotraconteur/0.18.0-2.tar.gz";
    name = "0.18.0-2.tar.gz";
    sha256 = "2c62cf4101258752094a69101186c757013eaf00c2b2f4bcc88591b8fa62077d";
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
