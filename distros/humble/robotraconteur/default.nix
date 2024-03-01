
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, bluez, boost, cmake, dbus, gtest, libusb1, openssl, python3, python3Packages, zlib }:
buildRosPackage {
  pname = "ros-humble-robotraconteur";
  version = "1.0.0-r2";

  src = fetchurl {
    url = "https://github.com/robotraconteur-packaging/robotraconteur-ros2-release/archive/release/humble/robotraconteur/1.0.0-2.tar.gz";
    name = "1.0.0-2.tar.gz";
    sha256 = "289563494bbd6d49daca9a7b348732c440a3dd103a02b7a388c8a9327f53d961";
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
