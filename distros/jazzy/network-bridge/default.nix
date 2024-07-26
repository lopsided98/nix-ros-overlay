
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-pytest, ament-lint-auto, ament-lint-common, boost, launch-testing, launch-testing-ament-cmake, launch-testing-ros, pkg-config, pluginlib, rclcpp, std-msgs, zstd }:
buildRosPackage {
  pname = "ros-jazzy-network-bridge";
  version = "1.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/network_bridge-release/archive/release/jazzy/network_bridge/1.0.2-1.tar.gz";
    name = "1.0.2-1.tar.gz";
    sha256 = "485f38bfde87b65e4eec39d780ffbd085cd750c1891b3ae87a71b1312cc1b208";
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
