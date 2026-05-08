
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, backward-ros, geometry-msgs, mujoco-ros2-control-msgs, mujoco-vendor, pluginlib, rclcpp, realtime-tools, ros2-control-cmake, std-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-kilted-mujoco-ros2-control-plugins";
  version = "0.0.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mujoco_ros2_control-release/archive/release/kilted/mujoco_ros2_control_plugins/0.0.3-1.tar.gz";
    name = "0.0.3-1.tar.gz";
    sha256 = "c2731875dd80398b3c2d0ae458b4eab65c4ee6e07bdae9b63a155f39a123f1e9";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ];
  propagatedBuildInputs = [ backward-ros geometry-msgs mujoco-ros2-control-msgs mujoco-vendor pluginlib rclcpp realtime-tools ros2-control-cmake std-msgs visualization-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Plugin package for mujoco_ros2_control";
    license = with lib.licenses; [ asl20 ];
  };
}
