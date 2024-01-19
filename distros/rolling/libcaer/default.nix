
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, libusb1, pkg-config }:
buildRosPackage {
  pname = "ros-rolling-libcaer";
  version = "1.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/libcaer-release/archive/release/rolling/libcaer/1.0.2-1.tar.gz";
    name = "1.0.2-1.tar.gz";
    sha256 = "6e720bdc0b40065a4f46a48b1a60c04a984acd92a68cc4628c33edaacfff6b72";
  };

  buildType = "cmake";
  buildInputs = [ cmake pkg-config ];
  propagatedBuildInputs = [ libusb1 ];

  meta = {
    description = ''library for event based sensors'';
    license = with lib.licenses; [ bsd2 ];
  };
}
