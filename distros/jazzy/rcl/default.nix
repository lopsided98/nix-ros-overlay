
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gen-version-h, ament-cmake-gtest, ament-cmake-ros, ament-lint-auto, ament-lint-common, launch, launch-testing, launch-testing-ament-cmake, libyaml, libyaml-vendor, mimick-vendor, osrf-testing-tools-cpp, rcl-interfaces, rcl-logging-interface, rcl-logging-spdlog, rcl-yaml-param-parser, rcutils, rmw, rmw-implementation, rmw-implementation-cmake, rosidl-runtime-c, rosidl-runtime-cpp, service-msgs, test-msgs, tracetools, type-description-interfaces }:
buildRosPackage {
  pname = "ros-jazzy-rcl";
  version = "9.2.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rcl-release/archive/release/jazzy/rcl/9.2.4-1.tar.gz";
    name = "9.2.4-1.tar.gz";
    sha256 = "64e7eb707a7490c010b4978c2a231701b6388449205843d4dbb286bae2f8d3f2";
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
