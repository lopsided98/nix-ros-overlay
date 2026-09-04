
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, ament-index-cpp, fmt, moveit-common, moveit-core, moveit-ros-planning, moveit-ros-visualization, pluginlib, rclcpp, rviz-common, rviz-rendering, srdfdom, urdf }:
buildRosPackage {
  pname = "ros-rolling-moveit-setup-framework";
  version = "2.15.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/moveit2-release/archive/release/rolling/moveit_setup_framework/2.15.1-1.tar.gz";
    name = "2.15.1-1.tar.gz";
    sha256 = "5df7996fafb2c067cac32bc3a7660404813cf8b488d3e00858a84ad6629dab02";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ];
  propagatedBuildInputs = [ ament-index-cpp fmt moveit-common moveit-core moveit-ros-planning moveit-ros-visualization pluginlib rclcpp rviz-common rviz-rendering srdfdom urdf ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = "C++ Interface for defining setup steps for MoveIt Setup Assistant";
    license = with lib.licenses; [ bsd3 ];
  };
}
