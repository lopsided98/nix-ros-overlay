
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, libusb1, pkg-config }:
buildRosPackage {
  pname = "ros-jazzy-libcaer";
  version = "1.0.2-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/libcaer-release/archive/release/jazzy/libcaer/1.0.2-3.tar.gz";
    name = "1.0.2-3.tar.gz";
    sha256 = "ea38b820a18683145b017392a0c965d2887d85715189965fbac581e7ec4469ec";
  };

  buildType = "cmake";
  buildInputs = [ cmake pkg-config ];
  propagatedBuildInputs = [ libusb1 ];

  meta = {
    description = "library for event based sensors";
    license = with lib.licenses; [ bsd2 ];
  };
}
