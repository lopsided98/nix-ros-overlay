
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-index-cpp, fmt, moveit-common, moveit-core, moveit-ros-planning, moveit-ros-visualization, pluginlib, rclcpp, rviz-common, rviz-rendering, srdfdom, urdf }:
buildRosPackage {
  pname = "ros-jazzy-moveit-setup-framework";
  version = "2.12.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/moveit2-release/archive/release/jazzy/moveit_setup_framework/2.12.1-1.tar.gz";
    name = "2.12.1-1.tar.gz";
    sha256 = "f7112e62783bc5ed8613cd400bbf97023f4f4af4144cfbdac1bfaff48a47d267";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ ament-index-cpp fmt moveit-common moveit-core moveit-ros-planning moveit-ros-visualization pluginlib rclcpp rviz-common rviz-rendering srdfdom urdf ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "C++ Interface for defining setup steps for MoveIt Setup Assistant";
    license = with lib.licenses; [ bsd3 ];
  };
}
