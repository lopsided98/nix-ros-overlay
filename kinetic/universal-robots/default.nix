
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ur-gazebo, ur10-e-moveit-config, ur-msgs, ur3-moveit-config, ur-e-gazebo, ur10-moveit-config, catkin, ur-e-description, ur-driver, ur5-moveit-config, ur-description, ur5-e-moveit-config, ur-bringup, ur-kinematics, ur3-e-moveit-config }:
buildRosPackage {
  pname = "ros-kinetic-universal-robots";
  version = "1.2.7-r1";

  src = fetchurl {
    url = "https://github.com/ros-industrial-release/universal_robot-release/archive/release/kinetic/universal_robots/1.2.7-1.tar.gz";
    name = "1.2.7-1.tar.gz";
    sha256 = "9ff8c47bde274ca443ea6d2341feaa58b9fa79212c26cf7a635276ab5b945ad7";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ ur-gazebo ur10-e-moveit-config ur-msgs ur3-moveit-config ur-e-gazebo ur10-moveit-config ur-e-description ur-driver ur5-moveit-config ur-description ur5-e-moveit-config ur-bringup ur-kinematics ur3-e-moveit-config ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS-Industrial support for Universal Robots manipulators (metapackage).'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
