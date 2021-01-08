
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, joint-state-publisher, moveit-fake-controller-manager, moveit-kinematics, moveit-planners-ompl, moveit-ros-move-group, moveit-ros-visualization, moveit-setup-assistant, robot-state-publisher, rviz, seed-r7-description, tf, xacro }:
buildRosPackage {
  pname = "ros-kinetic-seed-r7-typef-moveit-config";
  version = "0.3.4-r1";

  src = fetchurl {
    url = "https://github.com/seed-solutions/seed_r7_ros_pkg-release/archive/release/kinetic/seed_r7_typef_moveit_config/0.3.4-1.tar.gz";
    name = "0.3.4-1.tar.gz";
    sha256 = "b623b8ceb7d61b81cbc6e56a7b9ec9fb7cbaf37cd3bd3eb2dc25952eab1b538d";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ joint-state-publisher moveit-fake-controller-manager moveit-kinematics moveit-planners-ompl moveit-ros-move-group moveit-ros-visualization moveit-setup-assistant robot-state-publisher rviz seed-r7-description tf xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''An automatically generated package with all the configuration and launch files for using the SEED-Noid-Mover-typeF with the MoveIt! Motion Planning Framework'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
