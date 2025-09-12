
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-pytest, ament-lint-auto, ament-lint-common, boost, launch-testing, launch-testing-ament-cmake, launch-testing-ros, pkg-config, pluginlib, rclcpp, std-msgs, zstd }:
buildRosPackage {
  pname = "ros-humble-network-bridge";
  version = "2.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/network_bridge-release/archive/release/humble/network_bridge/2.0.0-1.tar.gz";
    name = "2.0.0-1.tar.gz";
    sha256 = "c44d9814a1db59897dd9a9b5bb017d7028dacdc2155dddb839000e8d8b22ad91";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake pkg-config ];
  checkInputs = [ ament-cmake-pytest ament-lint-auto ament-lint-common launch-testing launch-testing-ament-cmake launch-testing-ros ];
  propagatedBuildInputs = [ boost pluginlib rclcpp std-msgs zstd ];
  nativeBuildInputs = [ ament-cmake pkg-config ];

  meta = {
    description = "Allows for arbitrary network links (UDP, TCP, etc) to bridge ROS2 messages";
    license = with lib.licenses; [ mit ];
  };
}
