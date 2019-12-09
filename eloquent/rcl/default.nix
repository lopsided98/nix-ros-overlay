
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, test-msgs, osrf-testing-tools-cpp, rmw-implementation, ament-lint-auto, ament-cmake-ros, rcutils, rmw-implementation-cmake, launch-testing, ament-lint-common, rcl-yaml-param-parser, rcpputils, rmw, rosidl-generator-c, tinydir-vendor, ament-cmake-gtest, launch-testing-ament-cmake, rcl-logging-spdlog, launch, tracetools, rcl-interfaces, ament-cmake-pytest }:
buildRosPackage {
  pname = "ros-eloquent-rcl";
  version = "0.8.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rcl-release/archive/release/eloquent/rcl/0.8.3-1.tar.gz";
    name = "0.8.3-1.tar.gz";
    sha256 = "9d9f78172efa7946dac63b610d9b0fdb4b2a9a63d1511a4522a8eefc7323cab3";
  };

  buildType = "ament_cmake";
  buildInputs = [ rosidl-generator-c rcutils rcl-logging-spdlog rcl-yaml-param-parser tracetools rcl-interfaces rmw-implementation tinydir-vendor ];
  checkInputs = [ launch rmw-implementation-cmake launch-testing ament-lint-common test-msgs rcpputils ament-cmake-gtest launch-testing-ament-cmake osrf-testing-tools-cpp ament-cmake-pytest rmw ament-lint-auto ];
  propagatedBuildInputs = [ rosidl-generator-c rcutils rcl-logging-spdlog rcl-yaml-param-parser tracetools rcl-interfaces rmw rmw-implementation tinydir-vendor ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''The ROS client library common implementation.
    This package contains an API which builds on the ROS middleware API and is optionally built upon by the other ROS client libraries.'';
    license = with lib.licenses; [ asl20 ];
  };
}
