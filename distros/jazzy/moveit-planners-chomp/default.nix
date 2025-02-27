
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, chomp-motion-planner, moveit-common, moveit-core, pluginlib, rclcpp }:
buildRosPackage {
  pname = "ros-jazzy-moveit-planners-chomp";
  version = "2.12.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/moveit2-release/archive/release/jazzy/moveit_planners_chomp/2.12.2-1.tar.gz";
    name = "2.12.2-1.tar.gz";
    sha256 = "70a2d5a04d9457ab3c26414a26e5e2676d9f58328f4e070c10d2ff333315f344";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ chomp-motion-planner moveit-common moveit-core pluginlib rclcpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "The interface for using CHOMP within MoveIt";
    license = with lib.licenses; [ bsd3 ];
  };
}
