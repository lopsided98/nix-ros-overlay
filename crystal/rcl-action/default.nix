
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-lint-common, test-msgs, ament-cmake-gtest, action-msgs, ament-cmake-ros, rcl, ament-lint-auto, rcutils, osrf-testing-tools-cpp, rmw, rosidl-generator-c }:
buildRosPackage {
  pname = "ros-crystal-rcl-action";
  version = "0.6.6-r1";

  src = fetchurl {
    url = https://github.com/ros2-gbp/rcl-release/archive/release/crystal/rcl_action/0.6.6-1.tar.gz;
    sha256 = "494f14c3ec0492e2c21fe722391b5b7361e2250a4c841ec4b4839439f41b8bf3";
  };

  buildType = "ament_cmake";
  buildInputs = [ rcl action-msgs rcutils rmw rosidl-generator-c ];
  checkInputs = [ ament-lint-common test-msgs ament-cmake-gtest ament-lint-auto osrf-testing-tools-cpp ];
  propagatedBuildInputs = [ rcl action-msgs rcutils rmw rosidl-generator-c ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''Package containing a C-based ROS action implementation'';
    license = with lib.licenses; [ asl20 ];
  };
}
