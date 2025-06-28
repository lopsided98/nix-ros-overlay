
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, cmake, python3, python3Packages, ros-environment }:
buildRosPackage {
  pname = "ros-kilted-mavlink";
  version = "2025.6.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mavlink-gbp-release/archive/release/kilted/mavlink/2025.6.6-1.tar.gz";
    name = "2025.6.6-1.tar.gz";
    sha256 = "02b36998260e7f0b04a4e5656fafa3a3415bf9a7bf01c0deca62a1f6a635dbc4";
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
