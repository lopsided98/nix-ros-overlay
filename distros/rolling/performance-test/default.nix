
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, launch, launch-testing, osrf-testing-tools-cpp, rclcpp, rmw-implementation, rmw-implementation-cmake, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-rolling-performance-test";
  version = "1.2.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/performance_test-release/archive/release/rolling/performance_test/1.2.1-2.tar.gz";
    name = "1.2.1-2.tar.gz";
    sha256 = "b4071d74cda85348dfed0f509e42d9c3379d0989abb5a1f8c76c077ba19ad203";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake osrf-testing-tools-cpp rosidl-default-generators ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common launch launch-testing rmw-implementation-cmake ];
  propagatedBuildInputs = [ rclcpp rmw-implementation rosidl-default-runtime ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = ''Tool to test performance of ROS2 and DDS data layers and communication.'';
    license = with lib.licenses; [ asl20 ];
  };
}
