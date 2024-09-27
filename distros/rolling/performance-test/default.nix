
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, git, rclcpp, rmw-implementation, ros-environment, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-rolling-performance-test";
  version = "2.3.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/performance_test-release/archive/release/rolling/performance_test/2.3.0-1.tar.gz";
    name = "2.3.0-1.tar.gz";
    sha256 = "5c398b0324fce790a83b74f5d12608c6310acfe76de44e74c0a02ce9c0742487";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake git ros-environment rosidl-default-generators ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rclcpp rmw-implementation rosidl-default-runtime ];
  nativeBuildInputs = [ ament-cmake git rosidl-default-generators ];

  meta = {
    description = "Tool to test performance of ROS2 and DDS data layers and communication.";
    license = with lib.licenses; [ asl20 ];
  };
}
