
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, moveit-planners-ompl, joint-state-publisher, xacro, dsr-description, robot-state-publisher, moveit-setup-assistant, moveit-ros-move-group, catkin, moveit-ros-visualization, moveit-kinematics, moveit-fake-controller-manager }:
buildRosPackage {
  pname = "ros-kinetic-moveit-config-m1013";
  version = "0.9.6-r1";

  src = fetchurl {
    url = "https://github.com/doosan-robotics/doosan-robot-release/archive/release/kinetic/moveit_config_m1013/0.9.6-1.tar.gz";
    name = "0.9.6-1.tar.gz";
    sha256 = "33f018bdc3f5b2c9e5ca1083e23b7b79e7da13d411df933c9a63232f8ab1379f";
  };

  buildType = "catkin";
  buildInputs = [ dsr-description ];
  propagatedBuildInputs = [ moveit-planners-ompl joint-state-publisher xacro dsr-description robot-state-publisher moveit-setup-assistant moveit-ros-move-group moveit-ros-visualization moveit-kinematics moveit-fake-controller-manager ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''An automatically generated package with all the configuration and launch files for using the m1013 with the MoveIt! Motion Planning Framework'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
