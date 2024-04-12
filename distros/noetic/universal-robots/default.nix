
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, ur-description, ur-gazebo, ur10-moveit-config, ur10e-moveit-config, ur16e-moveit-config, ur20-moveit-config, ur3-moveit-config, ur30-moveit-config, ur3e-moveit-config, ur5-moveit-config, ur5e-moveit-config }:
buildRosPackage {
  pname = "ros-noetic-universal-robots";
  version = "1.3.3-r1";

  src = fetchurl {
    url = "https://github.com/ros-industrial-release/universal_robot-release/archive/release/noetic/universal_robots/1.3.3-1.tar.gz";
    name = "1.3.3-1.tar.gz";
    sha256 = "121c3dbe823e3235a573def84b447bae2547bd7c373b0f71307892fb3e2871f3";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ ur-description ur-gazebo ur10-moveit-config ur10e-moveit-config ur16e-moveit-config ur20-moveit-config ur3-moveit-config ur30-moveit-config ur3e-moveit-config ur5-moveit-config ur5e-moveit-config ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "ROS-Industrial support for Universal Robots manipulators (metapackage).";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
