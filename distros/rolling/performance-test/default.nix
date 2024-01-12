
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, launch, launch-testing, osrf-testing-tools-cpp, rclcpp, rmw-implementation, rmw-implementation-cmake, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-rolling-performance-test";
  version = "1.2.1-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/performance_test-release/archive/release/rolling/performance_test/1.2.1-3.tar.gz";
    name = "1.2.1-3.tar.gz";
    sha256 = "9da76f3752fd7e18464a7bbdef3b172e221b1d90c43440a8864913c9ac8b99eb";
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
