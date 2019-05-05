
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, gazebo-ros, controller-manager, joint-state-controller, diff-drive-controller, catkin, position-controllers, rviz, rqt-robot-steering, robot-state-publisher, urdf-tutorial, xacro, gazebo-ros-control }:
buildRosPackage {
  pname = "ros-lunar-urdf-sim-tutorial";
  version = "0.3.0";

  src = fetchurl {
    url = https://github.com/ros-gbp/urdf_tutorial-release/archive/release/lunar/urdf_sim_tutorial/0.3.0-0.tar.gz;
    sha256 = "9d653b337bf8b16951985181b0306fcef93c13aae00709a90d0faa1285fff965";
  };

  propagatedBuildInputs = [ gazebo-ros controller-manager joint-state-controller diff-drive-controller position-controllers rviz rqt-robot-steering robot-state-publisher urdf-tutorial xacro gazebo-ros-control ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The urdf_sim_tutorial package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
