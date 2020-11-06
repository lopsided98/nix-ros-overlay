
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gtest, ament-cmake-pytest, ament-cmake-ros, ament-lint-auto, ament-lint-common, launch, launch-testing, launch-testing-ament-cmake, mimick-vendor, osrf-testing-tools-cpp, rcl-interfaces, rcl-logging-spdlog, rcl-yaml-param-parser, rcpputils, rcutils, rmw, rmw-implementation, rmw-implementation-cmake, rosidl-runtime-c, test-msgs, tracetools }:
buildRosPackage {
  pname = "ros-foxy-rcl";
  version = "1.1.9-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rcl-release/archive/release/foxy/rcl/1.1.9-1.tar.gz";
    name = "1.1.9-1.tar.gz";
    sha256 = "d411fa7e85ffefc4a15f371af8f7dd4caa013ca111977dc4c4d0ebf3f2097606";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-gtest ament-cmake-pytest ament-lint-auto ament-lint-common launch launch-testing launch-testing-ament-cmake mimick-vendor osrf-testing-tools-cpp rcpputils rmw rmw-implementation-cmake test-msgs ];
  propagatedBuildInputs = [ rcl-interfaces rcl-logging-spdlog rcl-yaml-param-parser rcutils rmw rmw-implementation rosidl-runtime-c tracetools ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''The ROS client library common implementation.
    This package contains an API which builds on the ROS middleware API and is optionally built upon by the other ROS client libraries.'';
    license = with lib.licenses; [ asl20 ];
  };
}
