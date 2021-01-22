
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, dsr-description, joint-state-publisher, moveit-fake-controller-manager, moveit-kinematics, moveit-planners-ompl, moveit-ros-move-group, moveit-ros-visualization, moveit-setup-assistant, robot-state-publisher, xacro }:
buildRosPackage {
  pname = "ros-kinetic-moveit-config-m0609";
  version = "0.9.6-r1";

  src = fetchurl {
    url = "https://github.com/doosan-robotics/doosan-robot-release/archive/release/kinetic/moveit_config_m0609/0.9.6-1.tar.gz";
    name = "0.9.6-1.tar.gz";
    sha256 = "c80741f3881718628cdb2ac230e79c74c62679e90689fa551d0b6a0b31d08ebf";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ dsr-description joint-state-publisher moveit-fake-controller-manager moveit-kinematics moveit-planners-ompl moveit-ros-move-group moveit-ros-visualization moveit-setup-assistant robot-state-publisher xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''An automatically generated package with all the configuration and launch files for using the m0609 with the MoveIt! Motion Planning Framework'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
