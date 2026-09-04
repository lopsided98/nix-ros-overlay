
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, ament-index-cpp, moveit-ros-visualization, moveit-setup-framework, pluginlib, rclcpp, srdfdom, urdf }:
buildRosPackage {
  pname = "ros-lyrical-moveit-setup-core-plugins";
  version = "2.15.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/moveit2-release/archive/release/lyrical/moveit_setup_core_plugins/2.15.1-1.tar.gz";
    name = "2.15.1-1.tar.gz";
    sha256 = "c2beb8c2f039b52155727fd37c33d08fac492de4780aa1f2ea315852ddf46d00";
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
