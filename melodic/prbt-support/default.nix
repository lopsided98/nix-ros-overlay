
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, moveit-ros-planning, rosservice, joint-state-controller, prbt-hardware-support, rviz, moveit-core, robot-state-publisher, roslaunch, joint-state-publisher, xacro, pilz-control, catkin, canopen-motor-node, roscpp, controller-manager, cmake-modules, rostest, eigen, topic-tools }:
buildRosPackage {
  pname = "ros-melodic-prbt-support";
  version = "0.5.10-r1";

  src = fetchurl {
    url = "https://github.com/PilzDE/pilz_robots-release/archive/release/melodic/prbt_support/0.5.10-1.tar.gz";
    name = "0.5.10-1.tar.gz";
    sha256 = "6ac4e419108bfd4ed78fbdad88b776efe98dddbe791760136984ad5ee04942f5";
  };

  buildType = "catkin";
  buildInputs = [ roscpp ];
  checkInputs = [ moveit-ros-planning cmake-modules prbt-hardware-support rostest rviz moveit-core eigen roslaunch joint-state-publisher ];
  propagatedBuildInputs = [ controller-manager joint-state-controller pilz-control prbt-hardware-support rosservice canopen-motor-node robot-state-publisher topic-tools roscpp xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Mechanical, kinematic and visual description
  of the Pilz light weight arm PRBT.'';
    license = with lib.licenses; [ asl20 ];
  };
}
