
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, ament-cmake-ros-core, ament-cmake-version, ament-lint-auto, ament-lint-common, osrf-testing-tools-cpp, rcutils, rosidl-dynamic-typesupport, rosidl-runtime-c }:
buildRosPackage {
  pname = "ros-rolling-rmw";
  version = "7.11.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmw-release/archive/release/rolling/rmw/7.11.3-1.tar.gz";
    name = "7.11.3-1.tar.gz";
    sha256 = "97b72a2258e7318fdfeaf2d955542ddef9f5cf0b25655ca027c2e72b17da1492";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-ros-core ament-cmake-version ];
  checkInputs = [ ament-cmake-gmock ament-lint-auto ament-lint-common osrf-testing-tools-cpp ];
  propagatedBuildInputs = [ rcutils rosidl-dynamic-typesupport rosidl-runtime-c ];
  nativeBuildInputs = [ ament-cmake ament-cmake-ros-core ament-cmake-version ];

  meta = {
    description = "Contains the ROS middleware API.";
    license = with lib.licenses; [ asl20 ];
  };
}
