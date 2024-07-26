
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, cmake, python3, python3Packages, ros-environment }:
buildRosPackage {
  pname = "ros-humble-mavlink";
  version = "2024.6.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mavlink-gbp-release/archive/release/humble/mavlink/2024.6.6-1.tar.gz";
    name = "2024.6.6-1.tar.gz";
    sha256 = "a4102ec7f705bdf9ca5096d379ae0a6540d6c1577782e3f2fe378ac2897bb636";
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
