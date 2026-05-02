
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, mujoco-vendor, pluginlib, rclcpp, ros2-control-cmake, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-mujoco-ros2-control-plugins";
  version = "0.0.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mujoco_ros2_control-release/archive/release/rolling/mujoco_ros2_control_plugins/0.0.2-2.tar.gz";
    name = "0.0.2-2.tar.gz";
    sha256 = "6ecd909c5802ba3ee4a5276f6e0ea9d4ee744a43c4e6c28667eb9d346ea2eab8";
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
