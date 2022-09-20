
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, launch, launch-testing, osrf-testing-tools-cpp, rclcpp, rmw-implementation, rmw-implementation-cmake, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-galactic-performance-test";
  version = "1.2.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/performance_test-release/archive/release/galactic/performance_test/1.2.1-1.tar.gz";
    name = "1.2.1-1.tar.gz";
    sha256 = "9e8b988f5349aa1b8a340cd3f240ff2758d040a58da673e33f06af79541cc798";
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
