
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gen-version-h, ament-cmake-gtest, ament-cmake-ros, ament-lint-auto, ament-lint-common, launch, launch-testing, launch-testing-ament-cmake, libyaml, libyaml-vendor, mimick-vendor, osrf-testing-tools-cpp, rcl-interfaces, rcl-logging-interface, rcl-logging-spdlog, rcl-yaml-param-parser, rcutils, rmw, rmw-implementation, rmw-implementation-cmake, rosidl-runtime-c, rosidl-runtime-cpp, service-msgs, test-msgs, tracetools, type-description-interfaces }:
buildRosPackage {
  pname = "ros-rolling-rcl";
  version = "10.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rcl-release/archive/release/rolling/rcl/10.0.1-1.tar.gz";
    name = "10.0.1-1.tar.gz";
    sha256 = "59b0a37785224cc45928ce721f732a0b3b28d380e30857dc79f49da9e8e90749";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-gen-version-h ament-cmake-ros ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common launch launch-testing launch-testing-ament-cmake mimick-vendor osrf-testing-tools-cpp rmw rmw-implementation-cmake rosidl-runtime-cpp test-msgs ];
  propagatedBuildInputs = [ libyaml libyaml-vendor rcl-interfaces rcl-logging-interface rcl-logging-spdlog rcl-yaml-param-parser rcutils rmw rmw-implementation rosidl-runtime-c service-msgs tracetools type-description-interfaces ];
  nativeBuildInputs = [ ament-cmake-gen-version-h ament-cmake-ros ];

  meta = {
    description = "The ROS client library common implementation.
    This package contains an API which builds on the ROS middleware API and is optionally built upon by the other ROS client libraries.";
    license = with lib.licenses; [ asl20 ];
  };
}
