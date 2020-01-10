
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-msgs, ament-cmake-gtest, ament-cmake-ros, ament-lint-auto, ament-lint-common, osrf-testing-tools-cpp, rcl, rcutils, rmw, rmw-implementation-cmake, rosidl-generator-c, test-msgs }:
buildRosPackage {
  pname = "ros-eloquent-rcl-action";
  version = "0.8.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rcl-release/archive/release/eloquent/rcl_action/0.8.3-1.tar.gz";
    name = "0.8.3-1.tar.gz";
    sha256 = "cdc7d21298ac5551d8212bae291fdb774cba6bb67dc9587a5aa5ec7565d97937";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common osrf-testing-tools-cpp rmw-implementation-cmake test-msgs ];
  propagatedBuildInputs = [ action-msgs rcl rcutils rmw rosidl-generator-c ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''Package containing a C-based ROS action implementation'';
    license = with lib.licenses; [ asl20 ];
  };
}
