
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, controller-manager, diff-drive-controller, joint-state-broadcaster, laser-filters, robot-localization, robot-state-publisher, webots-ros2-control, webots-ros2-driver }:
buildRosPackage {
  pname = "ros-lyrical-webots-ros2-husarion";
  version = "2025.0.1-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/webots_ros2-release/archive/release/lyrical/webots_ros2_husarion/2025.0.1-3.tar.gz";
    name = "2025.0.1-3.tar.gz";
    sha256 = "c1761a5dac952b34ae877bd5ed73eb4e30eee52eb700504bfcefa0bf8233d547";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ controller-manager diff-drive-controller joint-state-broadcaster laser-filters robot-localization robot-state-publisher webots-ros2-control webots-ros2-driver ];

  meta = {
    description = "Husarion ROSbot 2R and XL robots ROS2 interface for Webots.";
    license = with lib.licenses; [ asl20 ];
  };
}
