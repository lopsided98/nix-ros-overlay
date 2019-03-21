
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, gazebo-ros, controller-manager, joint-state-controller, diff-drive-controller, catkin, position-controllers, rviz, rqt-robot-steering, robot-state-publisher, urdf-tutorial, xacro, gazebo-ros-control }:
buildRosPackage {
  pname = "ros-kinetic-urdf-sim-tutorial";
  version = "0.3.0-r1";

  src = fetchurl {
    url = https://github.com/ros-gbp/urdf_tutorial-release/archive/release/kinetic/urdf_sim_tutorial/0.3.0-1.tar.gz;
    sha256 = "edae179c71dd174dfd50f7a85af4e9bfec70c106e1d9b47d73a063d24891a590";
  };

  propagatedBuildInputs = [ gazebo-ros controller-manager joint-state-controller diff-drive-controller position-controllers rviz rqt-robot-steering robot-state-publisher urdf-tutorial xacro gazebo-ros-control ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The urdf_sim_tutorial package'';
    #license = lib.licenses.BSD;
  };
}
