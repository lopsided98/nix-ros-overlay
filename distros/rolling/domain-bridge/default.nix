
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, ament-lint-auto, ament-lint-common, example-interfaces, launch, launch-testing, launch-testing-ament-cmake, rclcpp, rclcpp-components, rcutils, rmw-connextdds, rmw-cyclonedds-cpp, rmw-fastrtps-cpp, rmw-implementation-cmake, rosbag2-cpp, rosgraph-msgs, rosidl-default-generators, rosidl-default-runtime, rosidl-typesupport-cpp, test-msgs, yaml-cpp, zstd-vendor }:
buildRosPackage {
  pname = "ros-rolling-domain-bridge";
  version = "0.5.0-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/domain_bridge-release/archive/release/rolling/domain_bridge/0.5.0-4.tar.gz";
    name = "0.5.0-4.tar.gz";
    sha256 = "8eff50c6f3717b13ccf2463aeda5d832415c715690dff36de087c9ff1c3aa37a";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-cmake-gmock ament-lint-auto ament-lint-common example-interfaces launch launch-testing launch-testing-ament-cmake rmw-connextdds rmw-cyclonedds-cpp rmw-fastrtps-cpp rmw-implementation-cmake rosgraph-msgs test-msgs ];
  propagatedBuildInputs = [ rclcpp rclcpp-components rcutils rosbag2-cpp rosidl-default-runtime rosidl-typesupport-cpp yaml-cpp zstd-vendor ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = "ROS 2 Domain Bridge";
    license = with lib.licenses; [ asl20 ];
  };
}
