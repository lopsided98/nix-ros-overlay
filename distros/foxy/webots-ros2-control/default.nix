
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, controller-manager, hardware-interface, pluginlib, rclcpp, rclcpp-lifecycle, ros-environment, webots-ros2-driver }:
buildRosPackage {
  pname = "ros-foxy-webots-ros2-control";
  version = "2023.0.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/webots_ros2-release/archive/release/foxy/webots_ros2_control/2023.0.0-2.tar.gz";
    name = "2023.0.0-2.tar.gz";
    sha256 = "04337f7173cbfac439b75a26d87844951179b7099d6caca2263467d2a7296d53";
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
