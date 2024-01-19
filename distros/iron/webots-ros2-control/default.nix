
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, controller-manager, hardware-interface, pluginlib, rclcpp, rclcpp-lifecycle, ros-environment, webots-ros2-driver }:
buildRosPackage {
  pname = "ros-iron-webots-ros2-control";
  version = "2023.1.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/webots_ros2-release/archive/release/iron/webots_ros2_control/2023.1.1-2.tar.gz";
    name = "2023.1.1-2.tar.gz";
    sha256 = "c43cf5d50fc6e279b11c447230da23553cb90b08409c345ae9be237ebc3ab4ea";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ros-environment ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ controller-manager hardware-interface pluginlib rclcpp rclcpp-lifecycle webots-ros2-driver ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''ros2_control plugin for Webots'';
    license = with lib.licenses; [ asl20 ];
  };
}
