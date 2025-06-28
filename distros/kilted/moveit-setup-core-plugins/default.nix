
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, ament-index-cpp, moveit-ros-visualization, moveit-setup-framework, pluginlib, rclcpp, srdfdom, urdf }:
buildRosPackage {
  pname = "ros-kilted-moveit-setup-core-plugins";
  version = "2.13.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/moveit2-release/archive/release/kilted/moveit_setup_core_plugins/2.13.2-2.tar.gz";
    name = "2.13.2-2.tar.gz";
    sha256 = "2a93b90197bb37160492c2adcdb535704daab9f1c4c475855ad70c464c6f2998";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ];
  propagatedBuildInputs = [ ament-index-cpp moveit-ros-visualization moveit-setup-framework pluginlib rclcpp srdfdom urdf ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = "Core (meta) plugins for MoveIt Setup Assistant";
    license = with lib.licenses; [ bsd3 ];
  };
}
