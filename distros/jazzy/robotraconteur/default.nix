
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, bluez, boost, cmake, dbus, gtest, libusb1, openssl, python3, python3Packages, swig, zlib }:
buildRosPackage {
  pname = "ros-jazzy-robotraconteur";
  version = "1.2.9-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/robotraconteur-release/archive/release/jazzy/robotraconteur/1.2.9-1.tar.gz";
    name = "1.2.9-1.tar.gz";
    sha256 = "aa19ec188fb8993aea1abefccd37277820245ab69b209b17567c107896eb5d97";
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
