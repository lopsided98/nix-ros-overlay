
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, moveit-fake-controller-manager, dsr-description, moveit-ros-move-group, moveit-ros-visualization, catkin, moveit-kinematics, moveit-planners-ompl, robot-state-publisher, joint-state-publisher, xacro, moveit-setup-assistant }:
buildRosPackage {
  pname = "ros-kinetic-moveit-config-m1509";
  version = "0.9.6-r1";

  src = fetchurl {
    url = https://github.com/doosan-robotics/doosan-robot-release/archive/release/kinetic/moveit_config_m1509/0.9.6-1.tar.gz;
    sha256 = "e23a0c29c6ab006a2f3bfc6431c9dc999f0f84024c9fa70ef15938b7a0570d9f";
  };

  buildInputs = [ dsr-description ];
  propagatedBuildInputs = [ moveit-fake-controller-manager dsr-description moveit-ros-move-group moveit-ros-visualization moveit-kinematics moveit-planners-ompl robot-state-publisher joint-state-publisher xacro moveit-setup-assistant ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''An automatically generated package with all the configuration and launch files for using the m1509 with the MoveIt! Motion Planning Framework'';
    #license = lib.licenses.BSD;
  };
}
