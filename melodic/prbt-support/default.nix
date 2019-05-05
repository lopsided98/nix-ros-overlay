
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, moveit-kinematics, rosservice, joint-state-controller, prbt-hardware-support, rviz, moveit-core, robot-state-publisher, roslaunch, joint-state-publisher, xacro, pilz-control, catkin, canopen-motor-node, roscpp, controller-manager, cmake-modules, rostest, eigen, topic-tools }:
buildRosPackage {
  pname = "ros-melodic-prbt-support";
  version = "0.5.3-r1";

  src = fetchurl {
    url = https://github.com/PilzDE/pilz_robots-release/archive/release/melodic/prbt_support/0.5.3-1.tar.gz;
    sha256 = "3245c40ace092b9ec35df51500c0ade0fd3ff5723d5f92c8e724d4edd7a5a05a";
  };

  buildInputs = [ roscpp ];
  checkInputs = [ cmake-modules moveit-kinematics rostest moveit-core eigen roslaunch ];
  propagatedBuildInputs = [ controller-manager joint-state-controller pilz-control prbt-hardware-support rosservice canopen-motor-node rviz robot-state-publisher topic-tools roscpp joint-state-publisher xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Mechanical, kinematic and visual description
  of the Pilz light weight arm PRBT.'';
    license = with lib.licenses; [ asl20 ];
  };
}
