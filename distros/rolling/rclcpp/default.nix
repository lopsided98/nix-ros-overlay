
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gen-version-h, ament-cmake-google-benchmark, ament-cmake-gtest, ament-cmake-ros, ament-cmake-ros-core, ament-index-cpp, ament-lint-auto, ament-lint-common, builtin-interfaces, mimick-vendor, performance-test-fixture, python3, python3Packages, rcl, rcl-interfaces, rcl-logging-interface, rcl-yaml-param-parser, rcpputils, rcutils, rmw, rmw-implementation-cmake, rosgraph-msgs, rosidl-default-generators, rosidl-dynamic-typesupport, rosidl-runtime-c, rosidl-runtime-cpp, rosidl-typesupport-cpp, std-msgs, test-msgs, tracetools }:
buildRosPackage {
  pname = "ros-rolling-rclcpp";
  version = "33.2.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rclcpp-release/archive/release/rolling/rclcpp/33.2.0-2.tar.gz";
    name = "33.2.0-2.tar.gz";
    sha256 = "eea22a7e2abc71b5a681ce06e30550f06f04886eebd6b76133772e3a5403eea1";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-gen-version-h ament-cmake-ros ament-cmake-ros-core python3 python3Packages.empy ];
  checkInputs = [ ament-cmake-google-benchmark ament-cmake-gtest ament-lint-auto ament-lint-common mimick-vendor performance-test-fixture rmw rmw-implementation-cmake rosidl-default-generators std-msgs test-msgs ];
  propagatedBuildInputs = [ ament-index-cpp builtin-interfaces rcl rcl-interfaces rcl-logging-interface rcl-yaml-param-parser rcpputils rcutils rmw rosgraph-msgs rosidl-dynamic-typesupport rosidl-runtime-c rosidl-runtime-cpp rosidl-typesupport-cpp tracetools ];
  nativeBuildInputs = [ ament-cmake-gen-version-h ament-cmake-ros python3 python3Packages.empy ];

  meta = {
    description = "The ROS client library in C++.";
    license = with lib.licenses; [ asl20 ];
  };
}
