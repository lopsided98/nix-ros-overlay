
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, controller-manager, hardware-interface, pluginlib, rclcpp, rclcpp-lifecycle, ros-environment, webots-ros2-driver }:
buildRosPackage {
  pname = "ros-lyrical-webots-ros2-control";
  version = "2025.0.1-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/webots_ros2-release/archive/release/lyrical/webots_ros2_control/2025.0.1-3.tar.gz";
    name = "2025.0.1-3.tar.gz";
    sha256 = "a584140a469b183c58c50548a674dce74c98e7a45883bfe731b08a63651ea97a";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ros-environment ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ controller-manager hardware-interface pluginlib rclcpp rclcpp-lifecycle webots-ros2-driver ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "ros2_control plugin for Webots";
    license = with lib.licenses; [ asl20 ];
  };
}
