
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-pytest, ament-index-python, ament-lint-auto, ament-lint-common, boost, cppzmq, demo-nodes-cpp, launch-ros, launch-testing, launch-testing-ament-cmake, launch-testing-ros, pkg-config, pluginlib, rclcpp, rclpy, std-msgs, tf2-msgs, tf2-ros, zstd }:
buildRosPackage {
  pname = "ros-rolling-network-bridge";
  version = "3.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/network_bridge-release/archive/release/rolling/network_bridge/3.1.0-1.tar.gz";
    name = "3.1.0-1.tar.gz";
    sha256 = "0a9c52557b0e5407e7187db0ed9dfa2f40a63ab0abf0fa76820842285d99416c";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake pkg-config ];
  checkInputs = [ ament-cmake-gtest ament-cmake-pytest ament-lint-auto ament-lint-common launch-testing launch-testing-ament-cmake launch-testing-ros rclpy ];
  propagatedBuildInputs = [ ament-index-python boost cppzmq demo-nodes-cpp launch-ros pluginlib rclcpp std-msgs tf2-msgs tf2-ros zstd ];
  nativeBuildInputs = [ ament-cmake pkg-config ];

  meta = {
    description = "Allows for arbitrary network links (UDP, TCP, etc) to bridge ROS2 messages";
    license = with lib.licenses; [ mit ];
  };
}
