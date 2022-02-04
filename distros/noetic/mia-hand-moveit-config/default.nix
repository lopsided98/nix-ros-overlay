
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, joint-state-publisher, joint-state-publisher-gui, mia-hand-description, moveit-fake-controller-manager, moveit-kinematics, moveit-planners-ompl, moveit-ros-move-group, moveit-ros-visualization, moveit-setup-assistant, moveit-simple-controller-manager, robot-state-publisher, rviz, tf2-ros, xacro }:
buildRosPackage {
  pname = "ros-noetic-mia-hand-moveit-config";
  version = "1.0.0-r13";

  src = fetchurl {
    url = "https://github.com/Prensilia-srl/mia_hand_ros_pkgs-release/archive/release/noetic/mia_hand_moveit_config/1.0.0-13.tar.gz";
    name = "1.0.0-13.tar.gz";
    sha256 = "60a66c548e9d3b6c3d51b8dae65ff26fb17f6bb4407385428e5a6f63bc3e0644";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ joint-state-publisher joint-state-publisher-gui mia-hand-description moveit-fake-controller-manager moveit-kinematics moveit-planners-ompl moveit-ros-move-group moveit-ros-visualization moveit-setup-assistant moveit-simple-controller-manager robot-state-publisher rviz tf2-ros xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''An automatically generated package with all the configuration and launch files for using the mia_hand with the MoveIt Motion Planning Framework'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
