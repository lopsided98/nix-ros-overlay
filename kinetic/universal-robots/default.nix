
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ur-gazebo, ur-e-gazebo, ur10-moveit-config, ur5-moveit-config, ur-description, ur-kinematics, ur-e-description, catkin, ur5-e-moveit-config, ur3-e-moveit-config, ur-bringup, ur-msgs, ur3-moveit-config, ur-driver, ur10-e-moveit-config }:
buildRosPackage {
  pname = "ros-kinetic-universal-robots";
  version = "1.2.5";

  src = fetchurl {
    url = https://github.com/ros-industrial-release/universal_robot-release/archive/release/kinetic/universal_robots/1.2.5-0.tar.gz;
    sha256 = "2442209b3f67ecada5f627e667fd73069d84d211b6cec807e63c3dea9a38d637";
  };

  propagatedBuildInputs = [ ur-gazebo ur-e-gazebo ur10-moveit-config ur-description ur-kinematics ur-e-description ur5-e-moveit-config ur3-e-moveit-config ur-bringup ur10-e-moveit-config ur-msgs ur3-moveit-config ur-driver ur5-moveit-config ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS-Industrial support for Universal Robots manipulators (metapackage).'';
    #license = lib.licenses.BSD;
  };
}
