
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, chomp-motion-planner, moveit-common, moveit-core, pluginlib, rclcpp }:
buildRosPackage {
  pname = "ros-humble-moveit-planners-chomp";
  version = "2.5.4-r1";

  src = fetchurl {
    url = "https://github.com/moveit/moveit2-release/archive/release/humble/moveit_planners_chomp/2.5.4-1.tar.gz";
    name = "2.5.4-1.tar.gz";
    sha256 = "f2ba3a2cb8410639477485ff222b1c471c0e2b7dd4e53f581c7c79dae9ef67c6";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ chomp-motion-planner moveit-common moveit-core pluginlib rclcpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''The interface for using CHOMP within MoveIt'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
