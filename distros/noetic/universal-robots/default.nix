
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, ur-description, ur-gazebo, ur10-moveit-config, ur10e-moveit-config, ur12e-moveit-config, ur15-moveit-config, ur16e-moveit-config, ur20-moveit-config, ur3-moveit-config, ur30-moveit-config, ur3e-moveit-config, ur5-moveit-config, ur5e-moveit-config, ur7e-moveit-config }:
buildRosPackage {
  pname = "ros-noetic-universal-robots";
  version = "1.5.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-industrial-release/universal_robot-release/archive/release/noetic/universal_robots/1.5.0-1.tar.gz";
    name = "1.5.0-1.tar.gz";
    sha256 = "9df033800dc6838d91460c18d5b1b6ed6e9dfc204fef1a5285cf0ea5f3c94e37";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ ur-description ur-gazebo ur10-moveit-config ur10e-moveit-config ur12e-moveit-config ur15-moveit-config ur16e-moveit-config ur20-moveit-config ur3-moveit-config ur30-moveit-config ur3e-moveit-config ur5-moveit-config ur5e-moveit-config ur7e-moveit-config ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "ROS-Industrial support for Universal Robots manipulators (metapackage).";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
