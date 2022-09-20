
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, franka-description, joint-state-publisher, joint-state-publisher-gui, moveit-fake-controller-manager, moveit-kinematics, moveit-planners-ompl, moveit-ros-move-group, moveit-ros-visualization, moveit-setup-assistant, moveit-simple-controller-manager, robot-state-publisher, rviz, tf2-ros, xacro }:
buildRosPackage {
  pname = "ros-melodic-panda-moveit-config";
  version = "0.7.8-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/panda_moveit_config-release/archive/release/melodic/panda_moveit_config/0.7.8-1.tar.gz";
    name = "0.7.8-1.tar.gz";
    sha256 = "5c566a9e10a372cfdeba2bb6e742096888d22c385e88ffe5486d413040b744a6";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ franka-description joint-state-publisher joint-state-publisher-gui moveit-fake-controller-manager moveit-kinematics moveit-planners-ompl moveit-ros-move-group moveit-ros-visualization moveit-setup-assistant moveit-simple-controller-manager robot-state-publisher rviz tf2-ros xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''An automatically generated package with all the configuration and launch files for using the panda with the MoveIt Motion Planning Framework'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
