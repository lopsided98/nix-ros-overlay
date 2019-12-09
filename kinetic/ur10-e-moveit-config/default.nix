
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, moveit-planners-ompl, joint-state-publisher, xacro, robot-state-publisher, moveit-ros-move-group, moveit-simple-controller-manager, catkin, ur-e-description, moveit-ros-visualization, roslaunch, moveit-fake-controller-manager }:
buildRosPackage {
  pname = "ros-kinetic-ur10-e-moveit-config";
  version = "1.2.7-r1";

  src = fetchurl {
    url = "https://github.com/ros-industrial-release/universal_robot-release/archive/release/kinetic/ur10_e_moveit_config/1.2.7-1.tar.gz";
    name = "1.2.7-1.tar.gz";
    sha256 = "50c03705038bd8f4d718394d2115b7750591c4489cb7742c0d75ebf408649d18";
  };

  buildType = "catkin";
  buildInputs = [ ur-e-description ];
  checkInputs = [ roslaunch ];
  propagatedBuildInputs = [ moveit-planners-ompl joint-state-publisher xacro robot-state-publisher moveit-ros-move-group moveit-simple-controller-manager ur-e-description moveit-ros-visualization moveit-fake-controller-manager ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''An automatically generated package with all the configuration and launch files for using the ur10e with the MoveIt Motion Planning Framework'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
