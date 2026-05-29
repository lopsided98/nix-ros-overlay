
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, bluez, boost, cmake, dbus, gtest, libusb1, openssl, python3, python3Packages, zlib }:
buildRosPackage {
  pname = "ros-jazzy-robotraconteur";
  version = "1.2.8-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/robotraconteur-release/archive/release/jazzy/robotraconteur/1.2.8-1.tar.gz";
    name = "1.2.8-1.tar.gz";
    sha256 = "d4fbe02bcd780b85c8ea384f74620f4cbbef5ff8d2e5e5f3ae3e800e1782489c";
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
