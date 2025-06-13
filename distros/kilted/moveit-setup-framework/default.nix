
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, ament-index-cpp, fmt, moveit-common, moveit-core, moveit-ros-planning, moveit-ros-visualization, pluginlib, rclcpp, rviz-common, rviz-rendering, srdfdom, urdf }:
buildRosPackage {
  pname = "ros-kilted-moveit-setup-framework";
  version = "2.13.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/moveit2-release/archive/release/kilted/moveit_setup_framework/2.13.2-2.tar.gz";
    name = "2.13.2-2.tar.gz";
    sha256 = "6e876d22f3522ff26b22c6d6d2d918eb794b6be203510ad486538d82b984c054";
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
