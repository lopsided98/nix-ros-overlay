
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, libusb1, pkg-config }:
buildRosPackage {
  pname = "ros-iron-libcaer";
  version = "1.2.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/libcaer-release/archive/release/iron/libcaer/1.2.2-1.tar.gz";
    name = "1.2.2-1.tar.gz";
    sha256 = "92e5545e30b5920ec76d94420b3070b54362eea676400087990251e10d4cf4c1";
  };

  buildType = "cmake";
  buildInputs = [ cmake pkg-config ];
  propagatedBuildInputs = [ libusb1 ];

  meta = {
    description = ''library for event based sensors'';
    license = with lib.licenses; [ bsd2 ];
  };
}
