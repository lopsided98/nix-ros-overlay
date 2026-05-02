
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, bluez, boost, cmake, dbus, gtest, libusb1, openssl, python3, python3Packages, zlib }:
buildRosPackage {
  pname = "ros-rolling-robotraconteur";
  version = "1.2.7-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/robotraconteur-release/archive/release/rolling/robotraconteur/1.2.7-3.tar.gz";
    name = "1.2.7-3.tar.gz";
    sha256 = "71c6a90810a41deaba858dbf903c4edca2118e76efd9e41796ac128cbca919a1";
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
