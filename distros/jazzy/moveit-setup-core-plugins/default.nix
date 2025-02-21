
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-index-cpp, moveit-ros-visualization, moveit-setup-framework, pluginlib, rclcpp, srdfdom, urdf }:
buildRosPackage {
  pname = "ros-jazzy-moveit-setup-core-plugins";
  version = "2.12.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/moveit2-release/archive/release/jazzy/moveit_setup_core_plugins/2.12.2-1.tar.gz";
    name = "2.12.2-1.tar.gz";
    sha256 = "c80826500ea25326c8ad15eead5ebc1b092e8d59473ef01d247b54e80ba774ca";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ ament-index-cpp moveit-ros-visualization moveit-setup-framework pluginlib rclcpp srdfdom urdf ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Core (meta) plugins for MoveIt Setup Assistant";
    license = with lib.licenses; [ bsd3 ];
  };
}
