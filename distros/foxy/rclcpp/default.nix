
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gmock, ament-cmake-google-benchmark, ament-cmake-gtest, ament-cmake-ros, ament-lint-auto, ament-lint-common, builtin-interfaces, libstatistics-collector, mimick-vendor, performance-test-fixture, rcl, rcl-interfaces, rcl-yaml-param-parser, rcpputils, rcutils, rmw, rmw-implementation-cmake, rosgraph-msgs, rosidl-default-generators, rosidl-runtime-cpp, rosidl-typesupport-c, rosidl-typesupport-cpp, statistics-msgs, test-msgs, tracetools }:
buildRosPackage {
  pname = "ros-foxy-rclcpp";
  version = "2.4.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rclcpp-release/archive/release/foxy/rclcpp/2.4.2-1.tar.gz";
    name = "2.4.2-1.tar.gz";
    sha256 = "0707ac6d64ba4b7b518e31044d7877b77f7560c1782aaa0d20d5c1f65b2ee6f8";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ];
  checkInputs = [ ament-cmake-gmock ament-cmake-google-benchmark ament-cmake-gtest ament-lint-auto ament-lint-common mimick-vendor performance-test-fixture rmw rmw-implementation-cmake rosidl-default-generators test-msgs ];
  propagatedBuildInputs = [ builtin-interfaces libstatistics-collector rcl rcl-interfaces rcl-yaml-param-parser rcpputils rcutils rmw rosgraph-msgs rosidl-runtime-cpp rosidl-typesupport-c rosidl-typesupport-cpp statistics-msgs tracetools ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''The ROS client library in C++.'';
    license = with lib.licenses; [ asl20 ];
  };
}
