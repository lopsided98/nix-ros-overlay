
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-pytest, ament-lint-auto, ament-lint-common, boost, launch-testing, launch-testing-ament-cmake, launch-testing-ros, pkg-config, pluginlib, rclcpp, std-msgs, tf2-msgs, tf2-ros, zstd }:
buildRosPackage {
  pname = "ros-lyrical-network-bridge";
  version = "3.0.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/network_bridge-release/archive/release/lyrical/network_bridge/3.0.0-3.tar.gz";
    name = "3.0.0-3.tar.gz";
    sha256 = "2de902fef6922852f6339a989bb201494cb12e56924843fe6c308657885542a4";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake pkg-config ];
  checkInputs = [ ament-cmake-pytest ament-lint-auto ament-lint-common launch-testing launch-testing-ament-cmake launch-testing-ros ];
  propagatedBuildInputs = [ boost pluginlib rclcpp std-msgs tf2-msgs tf2-ros zstd ];
  nativeBuildInputs = [ ament-cmake pkg-config ];

  meta = {
    description = "Allows for arbitrary network links (UDP, TCP, etc) to bridge ROS2 messages";
    license = with lib.licenses; [ mit ];
  };
}
