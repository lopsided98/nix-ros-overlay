
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, moveit-kinematics, rosservice, joint-trajectory-controller, joint-state-controller, prbt-hardware-support, rviz, moveit-core, robot-state-publisher, roslaunch, joint-state-publisher, xacro, pilz-control, catkin, canopen-motor-node, roscpp, controller-manager, cmake-modules, rostest, eigen, topic-tools }:
buildRosPackage {
  pname = "ros-melodic-prbt-support";
  version = "0.5.2";

  src = fetchurl {
    url = https://github.com/PilzDE/pilz_robots-release/archive/release/melodic/prbt_support/0.5.2-0.tar.gz;
    sha256 = "f38e5c99cb99f6999ecdfbc6ffc01b608b48cce3f71bfc22e5497d6f7ef06301";
  };

  checkInputs = [ rostest cmake-modules moveit-core eigen roslaunch moveit-kinematics ];
  propagatedBuildInputs = [ controller-manager joint-state-controller pilz-control prbt-hardware-support rosservice joint-trajectory-controller canopen-motor-node rviz robot-state-publisher topic-tools roscpp joint-state-publisher xacro ];
  nativeBuildInputs = [ catkin roscpp ];

  meta = {
    description = ''Mechanical, kinematic and visual description
  of the Pilz light weight arm PRBT.'';
    #license = lib.licenses.Apache 2.0;
  };
}
