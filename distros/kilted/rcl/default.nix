
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gen-version-h, ament-cmake-gtest, ament-cmake-ros, ament-lint-auto, ament-lint-common, launch, launch-testing, launch-testing-ament-cmake, libyaml, libyaml-vendor, mimick-vendor, osrf-testing-tools-cpp, rcl-interfaces, rcl-logging-interface, rcl-logging-spdlog, rcl-yaml-param-parser, rcutils, rmw, rmw-implementation, rmw-implementation-cmake, rosidl-runtime-c, rosidl-runtime-cpp, service-msgs, test-msgs, tracetools, type-description-interfaces }:
buildRosPackage {
  pname = "ros-kilted-rcl";
  version = "10.1.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rcl-release/archive/release/kilted/rcl/10.1.0-2.tar.gz";
    name = "10.1.0-2.tar.gz";
    sha256 = "4a868e9fbf3e57f7c00c3b0a6ce0c2e6f80077e3fc35e5171f9818b2b58e5cde";
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
