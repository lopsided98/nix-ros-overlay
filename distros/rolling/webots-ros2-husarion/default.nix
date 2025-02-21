
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, controller-manager, diff-drive-controller, joint-state-broadcaster, laser-filters, robot-localization, robot-state-publisher, webots-ros2-control, webots-ros2-driver }:
buildRosPackage {
  pname = "ros-rolling-webots-ros2-husarion";
  version = "2025.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/webots_ros2-release/archive/release/rolling/webots_ros2_husarion/2025.0.0-1.tar.gz";
    name = "2025.0.0-1.tar.gz";
    sha256 = "a4870aa48e266c37028c09811306de4343ec39a72f9d0efdbbec222e26962442";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ controller-manager diff-drive-controller joint-state-broadcaster laser-filters robot-localization robot-state-publisher webots-ros2-control webots-ros2-driver ];

  meta = {
    description = "Husarion ROSbot 2R and XL robots ROS2 interface for Webots.";
    license = with lib.licenses; [ asl20 ];
  };
}
