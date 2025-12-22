
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, _unresolved_ignition-gazebo6, _unresolved_ignition-plugin, ament-cmake, ament-index-cpp, ament-lint-auto, ament-lint-common, controller-manager, franka-hardware, hardware-interface, pluginlib, rclcpp, rclcpp-lifecycle, yaml-cpp-vendor }:
buildRosPackage {
  pname = "ros-humble-franka-ign-ros2-control";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/franka_ros2-release/archive/release/humble/franka_ign_ros2_control/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "b7a6afec91484bbb9ab1c1cfdf6127ea3677f51291966a931e1850ee862e3605";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ _unresolved_ignition-gazebo6 _unresolved_ignition-plugin ament-index-cpp controller-manager franka-hardware hardware-interface pluginlib rclcpp rclcpp-lifecycle yaml-cpp-vendor ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Ignition ros2_control package allows to control simulated robots using ros2_control framework.";
    license = with lib.licenses; [ asl20 ];
  };
}
