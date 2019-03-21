
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, moveit-ros-planning, roslint, ros-control-boilerplate, catkin, moveit-core, rosparam-shortcuts, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-moveit-sim-controller";
  version = "0.1.0";

  src = fetchurl {
    url = https://github.com/davetcoleman/moveit_sim_controller-release/archive/release/kinetic/moveit_sim_controller/0.1.0-0.tar.gz;
    sha256 = "c649a1a5f477802dd1d6cefca274a2dcf5c7928823b07658a67e0bed5243486c";
  };

  propagatedBuildInputs = [ moveit-ros-planning moveit-core ros-control-boilerplate rosparam-shortcuts roscpp ];
  nativeBuildInputs = [ moveit-ros-planning catkin moveit-core roslint ros-control-boilerplate rosparam-shortcuts roscpp ];

  meta = {
    description = ''A simulation interface for a hardware interface for ros_control, and loads default joint values from SRDF'';
    #license = lib.licenses.BSD;
  };
}
