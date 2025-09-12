
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-pytest, ament-lint-auto, ament-lint-common, boost, launch-testing, launch-testing-ament-cmake, launch-testing-ros, pkg-config, pluginlib, rclcpp, std-msgs, zstd }:
buildRosPackage {
  pname = "ros-jazzy-network-bridge";
  version = "2.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/network_bridge-release/archive/release/jazzy/network_bridge/2.0.0-1.tar.gz";
    name = "2.0.0-1.tar.gz";
    sha256 = "8391c19919ccbce655490a5583d90ca5765d524eba75a60637c320b4e72b1bbb";
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
