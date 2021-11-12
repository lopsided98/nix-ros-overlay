
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, ament-lint-auto, ament-lint-common, example-interfaces, launch, launch-testing, launch-testing-ament-cmake, libyamlcpp, rclcpp, rcutils, rmw-connextdds, rmw-cyclonedds-cpp, rmw-fastrtps-cpp, rmw-implementation-cmake, rosbag2-cpp, rosidl-default-generators, rosidl-default-runtime, rosidl-typesupport-cpp, test-msgs, zstd-vendor }:
buildRosPackage {
  pname = "ros-galactic-domain-bridge";
  version = "0.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/domain_bridge-release/archive/release/galactic/domain_bridge/0.4.0-1.tar.gz";
    name = "0.4.0-1.tar.gz";
    sha256 = "801b5acd4ffc9bd321ce47eb5a2047210c158feca3433f73be1f5906778c38a1";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-gmock ament-lint-auto ament-lint-common example-interfaces launch launch-testing launch-testing-ament-cmake rmw-connextdds rmw-cyclonedds-cpp rmw-fastrtps-cpp rmw-implementation-cmake test-msgs ];
  propagatedBuildInputs = [ libyamlcpp rclcpp rcutils rosbag2-cpp rosidl-default-runtime rosidl-typesupport-cpp zstd-vendor ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = ''ROS 2 Domain Bridge'';
    license = with lib.licenses; [ asl20 ];
  };
}
