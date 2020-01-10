
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gtest, ament-cmake-pytest, ament-cmake-ros, ament-lint-auto, ament-lint-common, launch, launch-testing, launch-testing-ament-cmake, osrf-testing-tools-cpp, rcl-interfaces, rcl-logging-spdlog, rcl-yaml-param-parser, rcpputils, rcutils, rmw, rmw-implementation, rmw-implementation-cmake, rosidl-generator-c, test-msgs, tinydir-vendor, tracetools }:
buildRosPackage {
  pname = "ros-eloquent-rcl";
  version = "0.8.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rcl-release/archive/release/eloquent/rcl/0.8.3-1.tar.gz";
    name = "0.8.3-1.tar.gz";
    sha256 = "9d9f78172efa7946dac63b610d9b0fdb4b2a9a63d1511a4522a8eefc7323cab3";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-gtest ament-cmake-pytest ament-lint-auto ament-lint-common launch launch-testing launch-testing-ament-cmake osrf-testing-tools-cpp rcpputils rmw rmw-implementation-cmake test-msgs ];
  propagatedBuildInputs = [ rcl-interfaces rcl-logging-spdlog rcl-yaml-param-parser rcutils rmw rmw-implementation rosidl-generator-c tinydir-vendor tracetools ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''The ROS client library common implementation.
    This package contains an API which builds on the ROS middleware API and is optionally built upon by the other ROS client libraries.'';
    license = with lib.licenses; [ asl20 ];
  };
}
