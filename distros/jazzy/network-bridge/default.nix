
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-pytest, ament-lint-auto, ament-lint-common, boost, launch-testing, launch-testing-ament-cmake, launch-testing-ros, pkg-config, pluginlib, rclcpp, std-msgs, tf2-msgs, tf2-ros, zstd }:
buildRosPackage {
  pname = "ros-jazzy-network-bridge";
  version = "3.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/network_bridge-release/archive/release/jazzy/network_bridge/3.0.0-1.tar.gz";
    name = "3.0.0-1.tar.gz";
    sha256 = "d1702202bb890748d9de7751c4b495bfb5bc612a67c89edc8a5786722c909dc8";
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
