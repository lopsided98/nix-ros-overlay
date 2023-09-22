
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, bluez, boost, cmake, dbus, gtest, libusb1, openssl, python3, python3Packages, zlib }:
buildRosPackage {
  pname = "ros-iron-robotraconteur";
  version = "0.18.0-r1";

  src = fetchurl {
    url = "https://github.com/robotraconteur-packaging/robotraconteur-ros2-release/archive/release/iron/robotraconteur/0.18.0-1.tar.gz";
    name = "0.18.0-1.tar.gz";
    sha256 = "ba4e2aacc13be461f75a8b85fe3dae0cb372931a29f2a9bf3346a1ea998aa3a5";
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
