
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, ur-description, ur-gazebo, ur10-moveit-config, ur10e-moveit-config, ur16e-moveit-config, ur3-moveit-config, ur3e-moveit-config, ur5-moveit-config, ur5e-moveit-config }:
buildRosPackage {
  pname = "ros-noetic-universal-robots";
  version = "1.3.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-industrial-release/universal_robot-release/archive/release/noetic/universal_robots/1.3.1-1.tar.gz";
    name = "1.3.1-1.tar.gz";
    sha256 = "4cc451e00668ff15d6ed79e99ff8ecc123d81d2c1cd2d0886fb78902a83f1546";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ ur-description ur-gazebo ur10-moveit-config ur10e-moveit-config ur16e-moveit-config ur3-moveit-config ur3e-moveit-config ur5-moveit-config ur5e-moveit-config ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS-Industrial support for Universal Robots manipulators (metapackage).'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
