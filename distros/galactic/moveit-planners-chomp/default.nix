
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, chomp-motion-planner, moveit-common, moveit-core, pluginlib, rclcpp }:
buildRosPackage {
  pname = "ros-galactic-moveit-planners-chomp";
  version = "2.3.3-r1";

  src = fetchurl {
    url = "https://github.com/moveit/moveit2-release/archive/release/galactic/moveit_planners_chomp/2.3.3-1.tar.gz";
    name = "2.3.3-1.tar.gz";
    sha256 = "9ec610286384020dc5903d04f1b3227a0738257a517edb00864e0d55630ab9d3";
  };

  buildType = "ament_cmake";
  buildInputs = [ moveit-common ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ chomp-motion-planner moveit-core pluginlib rclcpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''The interface for using CHOMP within MoveIt'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
