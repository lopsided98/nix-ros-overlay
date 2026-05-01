
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gen-version-h, ament-cmake-google-benchmark, ament-cmake-gtest, ament-cmake-ros, ament-cmake-ros-core, ament-index-cpp, ament-lint-auto, ament-lint-common, builtin-interfaces, libstatistics-collector, mimick-vendor, performance-test-fixture, python3, python3Packages, rcl, rcl-interfaces, rcl-logging-interface, rcl-yaml-param-parser, rcpputils, rcutils, rmw, rmw-implementation-cmake, rosgraph-msgs, rosidl-default-generators, rosidl-dynamic-typesupport, rosidl-runtime-c, rosidl-runtime-cpp, rosidl-typesupport-c, rosidl-typesupport-cpp, statistics-msgs, test-msgs, tracetools }:
buildRosPackage {
  pname = "ros-lyrical-rclcpp";
  version = "32.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rclcpp-release/archive/release/lyrical/rclcpp/32.0.0-1.tar.gz";
    name = "32.0.0-1.tar.gz";
    sha256 = "77006e39623e02578d736c0a096417347bcaa49cde6f8f538d742d57d4052f0f";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-gen-version-h ament-cmake-ros ament-cmake-ros-core python3 python3Packages.empy ];
  checkInputs = [ ament-cmake-google-benchmark ament-cmake-gtest ament-lint-auto ament-lint-common mimick-vendor performance-test-fixture rmw rmw-implementation-cmake rosidl-default-generators test-msgs ];
  propagatedBuildInputs = [ ament-index-cpp builtin-interfaces libstatistics-collector rcl rcl-interfaces rcl-logging-interface rcl-yaml-param-parser rcpputils rcutils rmw rosgraph-msgs rosidl-dynamic-typesupport rosidl-runtime-c rosidl-runtime-cpp rosidl-typesupport-c rosidl-typesupport-cpp statistics-msgs tracetools ];
  nativeBuildInputs = [ ament-cmake-gen-version-h ament-cmake-ros python3 python3Packages.empy ];

  meta = {
    description = "The ROS client library in C++.";
    license = with lib.licenses; [ asl20 ];
  };
}
