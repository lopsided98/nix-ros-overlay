
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-msgs, ament-cmake-gen-version-h, ament-cmake-gtest, ament-cmake-ros, ament-lint-auto, ament-lint-common, osrf-testing-tools-cpp, rcl, rcutils, rmw, rmw-implementation-cmake, rosidl-runtime-c, test-msgs }:
buildRosPackage {
  pname = "ros-jazzy-rcl-action";
  version = "9.2.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rcl-release/archive/release/jazzy/rcl_action/9.2.4-1.tar.gz";
    name = "9.2.4-1.tar.gz";
    sha256 = "4f9e607a5a0134a2f9ba896b5ff0b25c8718ff15a32b3828d2da05ecd0c2e13c";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-gen-version-h ament-cmake-ros ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common osrf-testing-tools-cpp rmw-implementation-cmake test-msgs ];
  propagatedBuildInputs = [ action-msgs rcl rcutils rmw rosidl-runtime-c ];
  nativeBuildInputs = [ ament-cmake-gen-version-h ament-cmake-ros ];

  meta = {
    description = "Package containing a C-based ROS action implementation";
    license = with lib.licenses; [ asl20 ];
  };
}
