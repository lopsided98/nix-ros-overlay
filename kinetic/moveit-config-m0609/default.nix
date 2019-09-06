
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, moveit-fake-controller-manager, dsr-description, moveit-ros-move-group, moveit-ros-visualization, catkin, moveit-kinematics, moveit-setup-assistant, robot-state-publisher, joint-state-publisher, xacro, moveit-planners-ompl }:
buildRosPackage {
  pname = "ros-kinetic-moveit-config-m0609";
  version = "0.9.6-r1";

  src = fetchurl {
    url = "https://github.com/doosan-robotics/doosan-robot-release/archive/release/kinetic/moveit_config_m0609/0.9.6-1.tar.gz";
    name = "0.9.6-1.tar.gz";
    sha256 = "c80741f3881718628cdb2ac230e79c74c62679e90689fa551d0b6a0b31d08ebf";
  };

  buildType = "catkin";
  buildInputs = [ dsr-description ];
  propagatedBuildInputs = [ moveit-fake-controller-manager moveit-ros-move-group moveit-ros-visualization moveit-kinematics moveit-setup-assistant joint-state-publisher robot-state-publisher dsr-description xacro moveit-planners-ompl ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''An automatically generated package with all the configuration and launch files for using the m0609 with the MoveIt! Motion Planning Framework'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
