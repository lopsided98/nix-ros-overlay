
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, cmake, python3, python3Packages, ros-environment }:
buildRosPackage {
  pname = "ros-kilted-mavlink";
  version = "2025.9.9-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mavlink-gbp-release/archive/release/kilted/mavlink/2025.9.9-1.tar.gz";
    name = "2025.9.9-1.tar.gz";
    sha256 = "e793262611fdd1ce82ec2f1144f0ca1b8c57ab16e0f4ccd5b0d0c40d09b88a1d";
  };

  buildType = "cmake";
  buildInputs = [ ament-cmake cmake python3 python3Packages.future python3Packages.lxml ros-environment ];
  nativeBuildInputs = [ ament-cmake cmake ros-environment ];

  meta = {
    description = "MAVLink message marshaling library.
  This package provides C-headers and C++11 library
  for both 1.0 and 2.0 versions of protocol.

  For pymavlink use separate install via rosdep (python-pymavlink).";
    license = with lib.licenses; [ lgpl3Only ];
  };
}
