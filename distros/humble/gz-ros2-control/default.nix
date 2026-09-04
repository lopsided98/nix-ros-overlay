
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, _unresolved_ignition-gazebo6, _unresolved_ignition-plugin, ament-cmake, ament-index-cpp, controller-manager, hardware-interface, pluginlib, rclcpp, rclcpp-lifecycle, yaml-cpp-vendor }:
buildRosPackage {
  pname = "ros-humble-gz-ros2-control";
  version = "0.7.21-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ign_ros2_control-release/archive/release/humble/gz_ros2_control/0.7.21-1.tar.gz";
    name = "0.7.21-1.tar.gz";
    sha256 = "351082989b22754ccc4333034b60f9114c69c395398da6cc9d3519cbf1f37153";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ _unresolved_ignition-gazebo6 _unresolved_ignition-plugin ament-index-cpp controller-manager hardware-interface pluginlib rclcpp rclcpp-lifecycle yaml-cpp-vendor ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Gazebo ros2_control package allows to control simulated robots using ros2_control framework.";
    license = with lib.licenses; [ asl20 ];
  };
}
