
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-msgs, ament-cmake-gtest, ament-cmake-ros, ament-lint-auto, ament-lint-common, osrf-testing-tools-cpp, rcl, rcutils, rmw, rmw-implementation-cmake, rosidl-runtime-c, test-msgs }:
buildRosPackage {
  pname = "ros-humble-rcl-action";
  version = "5.3.8-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rcl-release/archive/release/humble/rcl_action/5.3.8-1.tar.gz";
    name = "5.3.8-1.tar.gz";
    sha256 = "404efb03848affedb8e21f6cbbbe579e22d90fc2c44d0d1967600ccef39b9d65";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common osrf-testing-tools-cpp rmw-implementation-cmake test-msgs ];
  propagatedBuildInputs = [ action-msgs rcl rcutils rmw rosidl-runtime-c ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = "Package containing a C-based ROS action implementation";
    license = with lib.licenses; [ asl20 ];
  };
}
