
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gen-version-h, ament-cmake-gmock, ament-cmake-google-benchmark, ament-cmake-gtest, ament-cmake-ros, ament-index-cpp, ament-lint-auto, ament-lint-common, builtin-interfaces, libstatistics-collector, mimick-vendor, performance-test-fixture, python3, rcl, rcl-interfaces, rcl-yaml-param-parser, rcpputils, rcutils, rmw, rmw-implementation-cmake, rosgraph-msgs, rosidl-default-generators, rosidl-dynamic-typesupport, rosidl-runtime-cpp, rosidl-typesupport-c, rosidl-typesupport-cpp, statistics-msgs, test-msgs, tracetools }:
buildRosPackage {
  pname = "ros-iron-rclcpp";
  version = "21.0.8-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rclcpp-release/archive/release/iron/rclcpp/21.0.8-1.tar.gz";
    name = "21.0.8-1.tar.gz";
    sha256 = "781f82ed054b2ed471a42573b2cfd68f74616ae1833b3337f1002de9443f2d59";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-gen-version-h ament-cmake-ros python3 ];
  checkInputs = [ ament-cmake-gmock ament-cmake-google-benchmark ament-cmake-gtest ament-lint-auto ament-lint-common mimick-vendor performance-test-fixture rmw rmw-implementation-cmake rosidl-default-generators test-msgs ];
  propagatedBuildInputs = [ ament-index-cpp builtin-interfaces libstatistics-collector rcl rcl-interfaces rcl-yaml-param-parser rcpputils rcutils rmw rosgraph-msgs rosidl-dynamic-typesupport rosidl-runtime-cpp rosidl-typesupport-c rosidl-typesupport-cpp statistics-msgs tracetools ];
  nativeBuildInputs = [ ament-cmake-gen-version-h ament-cmake-ros python3 ];

  meta = {
    description = "The ROS client library in C++.";
    license = with lib.licenses; [ asl20 ];
  };
}
