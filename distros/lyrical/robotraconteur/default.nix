
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, bluez, boost, cmake, dbus, gtest, libusb1, openssl, python3, python3Packages, zlib }:
buildRosPackage {
  pname = "ros-lyrical-robotraconteur";
  version = "1.2.7-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/robotraconteur-release/archive/release/lyrical/robotraconteur/1.2.7-4.tar.gz";
    name = "1.2.7-4.tar.gz";
    sha256 = "edd27c687798c6e4cfbb5730e2c1d19349552f4dc873db090f65774ab0357f84";
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
