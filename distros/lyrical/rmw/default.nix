
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, ament-cmake-ros-core, ament-cmake-version, ament-lint-auto, ament-lint-common, osrf-testing-tools-cpp, rcutils, rosidl-dynamic-typesupport, rosidl-runtime-c }:
buildRosPackage {
  pname = "ros-lyrical-rmw";
  version = "7.10.1-r5";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmw-release/archive/release/lyrical/rmw/7.10.1-5.tar.gz";
    name = "7.10.1-5.tar.gz";
    sha256 = "a667e17f457e33e587b9d7ced8032ad3b9469313625e5303a63cbef900c6535f";
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
