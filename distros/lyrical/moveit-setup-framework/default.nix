
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, ament-index-cpp, fmt, moveit-common, moveit-core, moveit-ros-planning, moveit-ros-visualization, pluginlib, rclcpp, rviz-common, rviz-rendering, srdfdom, urdf }:
buildRosPackage {
  pname = "ros-lyrical-moveit-setup-framework";
  version = "2.15.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/moveit2-release/archive/release/lyrical/moveit_setup_framework/2.15.2-1.tar.gz";
    name = "2.15.2-1.tar.gz";
    sha256 = "7eeb34f79937e033f0d0504cf0ef2063d642a551aa2a77b5ed521fcc93c85d5b";
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
