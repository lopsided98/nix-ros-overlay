
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, moveit-planners-ompl, joint-state-publisher, xacro, robot-state-publisher, moveit-setup-assistant, moveit-ros-move-group, tf, catkin, rviz, moveit-ros-visualization, seed-r7-description, moveit-kinematics, moveit-fake-controller-manager }:
buildRosPackage {
  pname = "ros-kinetic-seed-r7-typef-moveit-config";
  version = "0.3.3-r2";

  src = fetchurl {
    url = "https://github.com/seed-solutions/seed_r7_ros_pkg-release/archive/release/kinetic/seed_r7_typef_moveit_config/0.3.3-2.tar.gz";
    name = "0.3.3-2.tar.gz";
    sha256 = "6d303d7ab248a3c2a365f2dda9e083b30f84ead46c9828dac5db5714923dd26e";
  };

  buildType = "catkin";
  buildInputs = [ seed-r7-description ];
  propagatedBuildInputs = [ moveit-planners-ompl joint-state-publisher xacro robot-state-publisher moveit-setup-assistant moveit-ros-move-group tf rviz moveit-ros-visualization seed-r7-description moveit-kinematics moveit-fake-controller-manager ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''An automatically generated package with all the configuration and launch files for using the SEED-Noid-Mover-typeF with the MoveIt! Motion Planning Framework'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
