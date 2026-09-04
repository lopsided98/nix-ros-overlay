
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, controller-manager, gz-plugin-vendor, gz-sim-vendor, hardware-interface, pluginlib, rclcpp, rclcpp-lifecycle, ros2-control-cmake, yaml-cpp-vendor }:
buildRosPackage {
  pname = "ros-lyrical-gz-ros2-control";
  version = "3.0.9-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ign_ros2_control-release/archive/release/lyrical/gz_ros2_control/3.0.9-1.tar.gz";
    name = "3.0.9-1.tar.gz";
    sha256 = "e231ea52731cfa81a5d216435374cfd9e3946dd45dbe6499a78cd1bbc31bd010";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ controller-manager gz-plugin-vendor gz-sim-vendor hardware-interface pluginlib rclcpp rclcpp-lifecycle ros2-control-cmake yaml-cpp-vendor ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Gazebo ros2_control package allows to control simulated robots using ros2_control framework.";
    license = with lib.licenses; [ asl20 ];
  };
}
