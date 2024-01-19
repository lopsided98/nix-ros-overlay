
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, launch, launch-testing, osrf-testing-tools-cpp, rclcpp, rmw-implementation, rmw-implementation-cmake, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-humble-performance-test";
  version = "1.2.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/performance_test-release/archive/release/humble/performance_test/1.2.1-1.tar.gz";
    name = "1.2.1-1.tar.gz";
    sha256 = "c2c82361579b9a02dea39bc4d3b589c0ed055bacf12b701e291e4629d96f7585";
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
