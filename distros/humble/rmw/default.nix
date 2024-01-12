
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gmock, ament-cmake-ros, ament-cmake-version, ament-lint-auto, ament-lint-common, osrf-testing-tools-cpp, rcutils, rosidl-runtime-c }:
buildRosPackage {
  pname = "ros-humble-rmw";
  version = "6.1.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmw-release/archive/release/humble/rmw/6.1.1-1.tar.gz";
    name = "6.1.1-1.tar.gz";
    sha256 = "381bfc803424f0bc543c16725074d339190a9f2e5e5964bc59a79506b0c7959d";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ament-cmake-version ];
  checkInputs = [ ament-cmake-gmock ament-lint-auto ament-lint-common osrf-testing-tools-cpp ];
  propagatedBuildInputs = [ rcutils rosidl-runtime-c ];
  nativeBuildInputs = [ ament-cmake-ros ament-cmake-version ];

  meta = {
    description = ''Contains the ROS middleware API.'';
    license = with lib.licenses; [ asl20 ];
  };
}
