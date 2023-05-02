
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, controller-manager, hardware-interface, pluginlib, rclcpp, rclcpp-lifecycle, ros-environment, webots-ros2-driver }:
buildRosPackage {
  pname = "ros-rolling-webots-ros2-control";
  version = "2023.0.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/webots_ros2-release/archive/release/rolling/webots_ros2_control/2023.0.3-1.tar.gz";
    name = "2023.0.3-1.tar.gz";
    sha256 = "f2bc7e62f8da9daf550f69c74b774e52d9697dcd5d8f00ea31e46994d45f07bd";
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
