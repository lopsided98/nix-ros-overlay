
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, bluez, boost, cmake, dbus, gtest, libusb1, openssl, python3, python3Packages, zlib }:
buildRosPackage {
  pname = "ros-kilted-robotraconteur";
  version = "1.2.8-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/robotraconteur-release/archive/release/kilted/robotraconteur/1.2.8-1.tar.gz";
    name = "1.2.8-1.tar.gz";
    sha256 = "72f14c211f5f9e22ed37d21084ddfd7eca201b579deba01b9d297048c27310a7";
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
