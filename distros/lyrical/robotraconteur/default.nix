
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, bluez, boost, cmake, dbus, gtest, libusb1, openssl, python3, python3Packages, zlib }:
buildRosPackage {
  pname = "ros-lyrical-robotraconteur";
  version = "1.2.8-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/robotraconteur-release/archive/release/lyrical/robotraconteur/1.2.8-1.tar.gz";
    name = "1.2.8-1.tar.gz";
    sha256 = "5d626036d35837ed44ae8fa434eeb36f9617f2475b41460b397658c22d747bd4";
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
