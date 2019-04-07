
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, moveit-ros-planning, roslint, ros-control-boilerplate, catkin, moveit-core, rosparam-shortcuts, roscpp }:
buildRosPackage {
  pname = "ros-melodic-moveit-sim-controller";
  version = "0.1.0";

  src = fetchurl {
    url = https://github.com/PickNikRobotics/moveit_sim_controller-release/archive/release/melodic/moveit_sim_controller/0.1.0-0.tar.gz;
    sha256 = "3d7a3062afc99ff36fa906e8796297a7ac3e1a1dea416d71a06ce22bdbfe18e9";
  };

  buildInputs = [ moveit-ros-planning moveit-core roslint ros-control-boilerplate rosparam-shortcuts roscpp ];
  propagatedBuildInputs = [ moveit-ros-planning moveit-core ros-control-boilerplate rosparam-shortcuts roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A simulation interface for a hardware interface for ros_control, and loads default joint values from SRDF'';
    #license = lib.licenses.BSD;
  };
}
