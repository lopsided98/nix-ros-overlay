
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, franka-description, joint-state-publisher, joint-state-publisher-gui, moveit-fake-controller-manager, moveit-kinematics, moveit-planners-ompl, moveit-ros-move-group, moveit-ros-visualization, robot-state-publisher, topic-tools, xacro }:
buildRosPackage {
  pname = "ros-melodic-panda-moveit-config";
  version = "0.7.4-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/panda_moveit_config-release/archive/release/melodic/panda_moveit_config/0.7.4-1.tar.gz";
    name = "0.7.4-1.tar.gz";
    sha256 = "c454614f3ce06467e0b857c873262d0f00e26d8287c70b8a70f22ab6b08b7040";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ franka-description joint-state-publisher joint-state-publisher-gui moveit-fake-controller-manager moveit-kinematics moveit-planners-ompl moveit-ros-move-group moveit-ros-visualization robot-state-publisher topic-tools xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''An automatically generated package with all the configuration and launch files for using the panda with the MoveIt! Motion Planning Framework'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
