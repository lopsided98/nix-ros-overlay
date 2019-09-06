
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rosidl-default-runtime, ament-cmake-pytest, ament-cmake, rmw-implementation-cmake, ament-lint-common, test-msgs, rcl-logging-noop, ament-cmake-gtest, launch, rmw-implementation, rcl-interfaces, ament-cmake-ros, ament-lint-auto, rcutils, osrf-testing-tools-cpp, rmw, rosidl-generator-c }:
buildRosPackage {
  pname = "ros-crystal-rcl";
  version = "0.6.6-r1";

  src = fetchurl {
    url = https://github.com/ros2-gbp/rcl-release/archive/release/crystal/rcl/0.6.6-1.tar.gz;
    sha256 = "e98f83aac311ace0a9b1d83d7f1a03765410e68f6281f74c080765133f4cb8cd";
  };

  buildType = "ament_cmake";
  buildInputs = [ rcl-logging-noop rmw-implementation rcl-interfaces rcutils rosidl-generator-c ];
  checkInputs = [ ament-cmake-pytest rmw-implementation-cmake ament-lint-common test-msgs ament-cmake-gtest launch ament-lint-auto osrf-testing-tools-cpp rmw ];
  propagatedBuildInputs = [ ament-cmake rcutils rcl-logging-noop rmw-implementation rcl-interfaces rosidl-default-runtime rmw rosidl-generator-c ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''The ROS client library common implementation.
    This package contains an API which builds on the ROS middleware API and is optionally built upon by the other ROS client libraries.'';
    license = with lib.licenses; [ asl20 ];
  };
}
