
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, joint-state-publisher, melfa-description, moveit-fake-controller-manager, moveit-kinematics, moveit-planners-ompl, moveit-ros-move-group, moveit-ros-visualization, robot-state-publisher, xacro }:
buildRosPackage {
  pname = "ros-kinetic-rv7fl-moveit-config";
  version = "0.0.4";

  src = fetchurl {
    url = "https://github.com/tork-a/melfa_robot-release/archive/release/kinetic/rv7fl_moveit_config/0.0.4-0.tar.gz";
    name = "0.0.4-0.tar.gz";
    sha256 = "f4ea2a8a65df905c1acbfb16f8073be39abf80ea031fcb5059372011a3970833";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ joint-state-publisher melfa-description moveit-fake-controller-manager moveit-kinematics moveit-planners-ompl moveit-ros-move-group moveit-ros-visualization robot-state-publisher xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''An automatically generated package with all the configuration and launch files for using the rv7fl with the MoveIt! Motion Planning Framework'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
