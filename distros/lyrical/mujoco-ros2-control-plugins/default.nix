
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, mujoco-vendor, pluginlib, rclcpp, ros2-control-cmake, std-msgs }:
buildRosPackage {
  pname = "ros-lyrical-mujoco-ros2-control-plugins";
  version = "0.0.2-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mujoco_ros2_control-release/archive/release/lyrical/mujoco_ros2_control_plugins/0.0.2-3.tar.gz";
    name = "0.0.2-3.tar.gz";
    sha256 = "00f580d3a3c16a1a567a90cc62d4e2f48cca06c02a4c94d63b69c479349c5521";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ];
  propagatedBuildInputs = [ mujoco-vendor pluginlib rclcpp ros2-control-cmake std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Plugin package for mujoco_ros2_control";
    license = with lib.licenses; [ asl20 ];
  };
}
