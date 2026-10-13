
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-pytest, ament-index-python, ament-lint-auto, ament-lint-common, boost, cppzmq, demo-nodes-cpp, launch-ros, launch-testing, launch-testing-ament-cmake, launch-testing-ros, pkg-config, pluginlib, rclcpp, rclpy, std-msgs, tf2-msgs, tf2-ros, zstd }:
buildRosPackage {
  pname = "ros-humble-network-bridge";
  version = "3.1.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/network_bridge-release/archive/release/humble/network_bridge/3.1.0-2.tar.gz";
    name = "3.1.0-2.tar.gz";
    sha256 = "27baf71649d87466d40a1c806636ee1fba63b3d12cf36dbf90c99eab156260d9";
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
