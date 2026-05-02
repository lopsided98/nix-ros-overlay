
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, controller-manager, diff-drive-controller, joint-state-broadcaster, laser-filters, robot-localization, robot-state-publisher, webots-ros2-control, webots-ros2-driver }:
buildRosPackage {
  pname = "ros-rolling-webots-ros2-husarion";
  version = "2025.0.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/webots_ros2-release/archive/release/rolling/webots_ros2_husarion/2025.0.1-2.tar.gz";
    name = "2025.0.1-2.tar.gz";
    sha256 = "8957f344dd8de832cfd9a38571cc43be71197ed8082e2d18391679cc1f3d18f1";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ controller-manager diff-drive-controller joint-state-broadcaster laser-filters robot-localization robot-state-publisher webots-ros2-control webots-ros2-driver ];

  meta = {
    description = "Husarion ROSbot 2R and XL robots ROS2 interface for Webots.";
    license = with lib.licenses; [ asl20 ];
  };
}
