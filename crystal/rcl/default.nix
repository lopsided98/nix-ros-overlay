
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-pytest, ament-cmake-ros, rcutils, rosidl-generator-c, launch, rmw-implementation-cmake, rosidl-default-runtime, ament-lint-common, ament-cmake, ament-lint-auto, test-msgs, ament-cmake-gtest, osrf-testing-tools-cpp, rcl-interfaces, rmw, rmw-implementation, rcl-logging-noop }:
buildRosPackage {
  pname = "ros-crystal-rcl";
  version = "0.6.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rcl-release/archive/release/crystal/rcl/0.6.6-1.tar.gz";
    name = "0.6.6-1.tar.gz";
    sha256 = "e98f83aac311ace0a9b1d83d7f1a03765410e68f6281f74c080765133f4cb8cd";
  };

  buildType = "ament_cmake";
  buildInputs = [ rosidl-generator-c rcutils rcl-interfaces rmw-implementation rcl-logging-noop ];
  checkInputs = [ launch rmw-implementation-cmake ament-lint-common test-msgs ament-cmake-gtest osrf-testing-tools-cpp rmw ament-cmake-pytest ament-lint-auto ];
  propagatedBuildInputs = [ rosidl-generator-c rcutils rosidl-default-runtime ament-cmake rcl-interfaces rmw rmw-implementation rcl-logging-noop ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''The ROS client library common implementation.
    This package contains an API which builds on the ROS middleware API and is optionally built upon by the other ROS client libraries.'';
    license = with lib.licenses; [ asl20 ];
  };
}
