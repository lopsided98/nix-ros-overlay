
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, bluez, boost, cmake, dbus, gtest, libusb1, openssl, python3, python3Packages, swig, zlib }:
buildRosPackage {
  pname = "ros-rolling-robotraconteur";
  version = "1.2.9-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/robotraconteur-release/archive/release/rolling/robotraconteur/1.2.9-1.tar.gz";
    name = "1.2.9-1.tar.gz";
    sha256 = "2426112f6a9d823233e10e1334bd61688e0e743d34d7f7caa936ac268e9a972e";
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
