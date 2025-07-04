
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, controller-manager, diff-drive-controller, joint-state-broadcaster, laser-filters, robot-localization, robot-state-publisher, webots-ros2-control, webots-ros2-driver }:
buildRosPackage {
  pname = "ros-kilted-webots-ros2-husarion";
  version = "2025.0.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/webots_ros2-release/archive/release/kilted/webots_ros2_husarion/2025.0.0-2.tar.gz";
    name = "2025.0.0-2.tar.gz";
    sha256 = "c62f42fc980114adccc90d58812249a474445b3d1f13f80c832c216cf13181e8";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ controller-manager diff-drive-controller joint-state-broadcaster laser-filters robot-localization robot-state-publisher webots-ros2-control webots-ros2-driver ];

  meta = {
    description = "Husarion ROSbot 2R and XL robots ROS2 interface for Webots.";
    license = with lib.licenses; [ asl20 ];
  };
}
