
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, cmake, python3, python3Packages, ros-environment }:
buildRosPackage {
  pname = "ros-rolling-mavlink";
  version = "2026.6.19-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mavlink-gbp-release/archive/release/rolling/mavlink/2026.6.19-1.tar.gz";
    name = "2026.6.19-1.tar.gz";
    sha256 = "67cc5062acef3b822c82ba2e4d100595d1a2f6e82f0a35ee028079e4f1cb487c";
  };

  buildType = "cmake";
  buildInputs = [ ament-cmake cmake python3 python3Packages.lxml ros-environment ];
  nativeBuildInputs = [ ament-cmake cmake ros-environment ];

  meta = {
    description = "MAVLink message marshaling library.
  This package provides C-headers and C++11 library
  for both 1.0 and 2.0 versions of protocol.

  For pymavlink use separate install via rosdep (python-pymavlink).";
    license = with lib.licenses; [ lgpl3Only ];
  };
}
