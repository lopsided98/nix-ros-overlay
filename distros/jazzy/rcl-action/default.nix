
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-msgs, ament-cmake-gen-version-h, ament-cmake-gtest, ament-cmake-ros, ament-lint-auto, ament-lint-common, osrf-testing-tools-cpp, rcl, rcutils, rmw, rmw-implementation-cmake, rosidl-runtime-c, test-msgs }:
buildRosPackage {
  pname = "ros-jazzy-rcl-action";
  version = "9.2.9-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rcl-release/archive/release/jazzy/rcl_action/9.2.9-1.tar.gz";
    name = "9.2.9-1.tar.gz";
    sha256 = "5e0a983a7c5e4e35ea5f7931e972d58e7d448f55b49c2a3e12df23806d6a9bd1";
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
