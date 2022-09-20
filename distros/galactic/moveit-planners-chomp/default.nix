
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, chomp-motion-planner, moveit-common, moveit-core, pluginlib, rclcpp }:
buildRosPackage {
  pname = "ros-galactic-moveit-planners-chomp";
  version = "2.3.4-r1";

  src = fetchurl {
    url = "https://github.com/moveit/moveit2-release/archive/release/galactic/moveit_planners_chomp/2.3.4-1.tar.gz";
    name = "2.3.4-1.tar.gz";
    sha256 = "946ce1da6061975d25633f082418a9af0bbd7ca2cf0bc8d987aa118558a0a739";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake moveit-common ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ chomp-motion-planner moveit-core pluginlib rclcpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''The interface for using CHOMP within MoveIt'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
