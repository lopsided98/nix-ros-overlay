
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, controller-manager, hardware-interface, pluginlib, rclcpp, webots-ros2-driver }:
buildRosPackage {
  pname = "ros-foxy-webots-ros2-control";
  version = "1.1.2-r2";

  src = fetchurl {
    url = "https://github.com/cyberbotics/webots_ros2-release/archive/release/foxy/webots_ros2_control/1.1.2-2.tar.gz";
    name = "1.1.2-2.tar.gz";
    sha256 = "8bff749bf38bb472ddddaf27d714ad2d0fab6f6c1ff96385c73eb14c5ffded55";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ controller-manager hardware-interface pluginlib rclcpp webots-ros2-driver ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''ros2_control plugin for Webots'';
    license = with lib.licenses; [ asl20 ];
  };
}
