
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, gazebo-ros, controller-manager, joint-state-controller, ur-description, catkin, joint-trajectory-controller, robot-state-publisher, effort-controllers, gazebo-ros-control }:
buildRosPackage {
  pname = "ros-kinetic-ur-gazebo";
  version = "1.2.1";

  src = fetchurl {
    url = https://github.com/ros-industrial-release/universal_robot-release/archive/release/kinetic/ur_gazebo/1.2.1-0.tar.gz;
    sha256 = "a115b00c3a1bf2d6b5f148fcc8c6a5080e3a6caed8aebff775230ae46683e259";
  };

  propagatedBuildInputs = [ gazebo-ros controller-manager joint-state-controller robot-state-publisher effort-controllers ur-description gazebo-ros-control joint-trajectory-controller ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Gazebo wrapper for the Universal UR5/10 robot arms.'';
    #license = lib.licenses.BSD;
  };
}
