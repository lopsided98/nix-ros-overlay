
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, ur-description, ur-gazebo, ur10-moveit-config, ur10e-moveit-config, ur12e-moveit-config, ur16e-moveit-config, ur20-moveit-config, ur3-moveit-config, ur30-moveit-config, ur3e-moveit-config, ur5-moveit-config, ur5e-moveit-config, ur7e-moveit-config }:
buildRosPackage {
  pname = "ros-noetic-universal-robots";
  version = "1.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-industrial-release/universal_robot-release/archive/release/noetic/universal_robots/1.4.0-1.tar.gz";
    name = "1.4.0-1.tar.gz";
    sha256 = "0b32ed7d23fb190e177cd217f755f02e58904524781c441818cc525e7309bb71";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ ur-description ur-gazebo ur10-moveit-config ur10e-moveit-config ur12e-moveit-config ur16e-moveit-config ur20-moveit-config ur3-moveit-config ur30-moveit-config ur3e-moveit-config ur5-moveit-config ur5e-moveit-config ur7e-moveit-config ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "ROS-Industrial support for Universal Robots manipulators (metapackage).";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
