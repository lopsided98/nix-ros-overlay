
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-msgs, ament-cmake-gen-version-h, ament-cmake-gtest, ament-cmake-ros, ament-lint-auto, ament-lint-common, osrf-testing-tools-cpp, rcl, rcutils, rmw, rmw-implementation-cmake, rosidl-runtime-c, test-msgs }:
buildRosPackage {
  pname = "ros-rolling-rcl-action";
  version = "10.5.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rcl-release/archive/release/rolling/rcl_action/10.5.1-1.tar.gz";
    name = "10.5.1-1.tar.gz";
    sha256 = "af92163d2379464fd8a75ee322ba641ed87da85f20c389dbca8897e7cc9b4152";
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
