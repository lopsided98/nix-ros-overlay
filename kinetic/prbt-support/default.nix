
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, moveit-kinematics, rosservice, joint-trajectory-controller, prbt-hardware-support, rviz, moveit-core, robot-state-publisher, roslaunch, joint-state-publisher, xacro, pilz-control, catkin, canopen-motor-node, roscpp, controller-manager, cmake-modules, rostest, eigen, topic-tools }:
buildRosPackage {
  pname = "ros-kinetic-prbt-support";
  version = "0.4.7";

  src = fetchurl {
    url = https://github.com/PilzDE/pilz_robots-release/archive/release/kinetic/prbt_support/0.4.7-0.tar.gz;
    sha256 = "dd7efe1f8276e68a739a336d94cdcb4b95b7b24f634b2d051c16efcb55e99021";
  };

  checkInputs = [ rostest cmake-modules moveit-core eigen roslaunch moveit-kinematics ];
  propagatedBuildInputs = [ controller-manager pilz-control prbt-hardware-support rosservice joint-trajectory-controller canopen-motor-node rviz robot-state-publisher topic-tools roscpp joint-state-publisher xacro ];
  nativeBuildInputs = [ catkin roscpp ];

  meta = {
    description = ''Mechanical, kinematic and visual description
  of the Pilz light weight arm PRBT.'';
    #license = lib.licenses.Apache 2.0;
  };
}
