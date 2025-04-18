
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, ament-index-cpp, moveit-ros-visualization, moveit-setup-framework, pluginlib, rclcpp, srdfdom, urdf }:
buildRosPackage {
  pname = "ros-rolling-moveit-setup-core-plugins";
  version = "2.13.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/moveit2-release/archive/release/rolling/moveit_setup_core_plugins/2.13.2-1.tar.gz";
    name = "2.13.2-1.tar.gz";
    sha256 = "67869a3dae1f9bb6d2a0f97701c6a66c9dc6b9254e5153d696e560b1582150b4";
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
